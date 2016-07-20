#!/usr/bin/perl

# Jellyfishを用いてゲノムにおけるk-merの頻度を返すサーバ
#
# 指定ポートに接続しk-merを送信すると、ゲノムにおける頻度を整数で返す
#
# 使用例：
# % telnet localhost 6738
# Trying 127.0.0.1...
# Connected to localhost.
# Escape character is '^]'.
# cgggcttcngg <- 塩基配列を送信、縮重塩基にも対応
# 1306 <- ゲノムにおける頻度が整数で返ってくる
# Connection closed by foreign host.
# %
#
# 必要なモジュール：
# Expect
#
# 必要なソフトウェア：
# Jellyfish: http://www.cbcb.umd.edu/software/jellyfish/
#
# 2013-12-19 Yuki Naito (@meso_cacase)
# 2016-07-19 Yuki Naito (@meso_cacase) 縮重塩基に対応

use warnings ;
use strict ;
use Getopt::Long ;
use Socket ;
use Expect ;

my $jellyfish = '/backup/jellyfish-1.1.10_s00/bin/jellyfish' ;
my $timeout   = 2 ;  # Expectのタイムアウト秒

# コマンドラインオプションを取得
my $port     = '' ;
my $hashfile = '' ;
my $k        = '' ;
GetOptions(
        'port=i' => \$port,
        'hash=s' => \$hashfile,
        'k=i'    => \$k,  # 頻度を求めるk-merの長さ
) ;
$port     or die "ERROR : -p port required.\n" ;
$hashfile or die "ERROR : -h hashfile required.\n" ;
$k        or die "ERROR : -k oligolength required.\n" ;

# ソケット生成
socket(CLIENT_WAITING, PF_INET, SOCK_STREAM, 0)
	or die "ERROR : cannot create socket ($!)" ;

# ソケットオプション設定
setsockopt(CLIENT_WAITING, SOL_SOCKET, SO_REUSEADDR, 1)
	or die "ERROR : setsockopt failed ($!)" ;

# ソケットにアドレス(名前)を割り付ける
bind(CLIENT_WAITING, pack_sockaddr_in($port, INADDR_ANY))
	or die "ERROR : bind failed ($!)" ;

# ポートを見張る
listen(CLIENT_WAITING, SOMAXCONN)
	or die "ERROR : listen failed ($!)" ;

$| = 1 ;

(my $hashname = $hashfile) =~ s{.*/}{} ;
print "[@{[ timestamp() ]}] [JellyfishServer] " .
      "Starting server: port $port, hash $hashname, k=$k\n" ;

# jellyfishコマンドを起動
JELLYFISH:
my $command = "$jellyfish query -C $hashfile" ;
my $expect  = Expect->spawn("$command ; echo ___JELLYFISH_TERMINATED___")
	or die "ERROR : cannot exec jellyfish ($!)" ;

# jellyfishの入出力をSTDOUTに出力しない
$expect->log_stdout(0) ;

# jellyfishコマンドの起動チェック
$expect->expect($timeout,
	[ qr/___JELLYFISH_TERMINATED___/ => sub {
		die "ERROR : jellyfish terminated ($!)" ;
	}]) ;

# while(1)することで、1つの接続が終わっても次の接続に備える
while (1){
	my $paddr = accept(CLIENT, CLIENT_WAITING) ;

	# クライアントに対して出力をバッファリングしない
	select(CLIENT) ; $|=1 ; select(STDOUT) ;

	# ホスト名、IPアドレス、クライアントのポート番号を取得
	my ($client_port, $client_iaddr) = unpack_sockaddr_in($paddr) ;
	my $client_hostname = gethostbyaddr($client_iaddr, AF_INET) ;
	my $client_ip = inet_ntoa($client_iaddr) ;

	print "[@{[ timestamp() ]}] [JellyfishServer] " .
	      "Connect: $client_ip ($client_hostname) port $client_port\n" ;

	# k-merを取得。改行文字以降を破棄
	(my $seq = <CLIENT>) =~ s/[\n\r].*//s ;

	# ゲノムにおける頻度を取得
	my $count = 0 ;
	foreach ( iub_expand($seq) ){
		my $seq = $_ ;

		# 塩基配列をチェックし、エラーの場合は -1 を返す
		unless ($seq =~ /^[atgc]{$k}$/i){
			$count = -1 ;
			last ;
		}

		$expect->send("$seq\n") ;

		$expect->expect($timeout,
			[ qr/___JELLYFISH_TERMINATED___/ => sub {
				print "[@{[ timestamp() ]}] [JellyfishServer] " .
				      "seq=$seq, count=-1\n" ;
				print CLIENT "-1\n" ;
				close CLIENT ;
				print "[@{[ timestamp() ]}] [JellyfishServer] " .
				      "Connection closed.\n" ;
				print "[@{[ timestamp() ]}] [JellyfishServer] " .
				      "Restarting jellyfish...\n" ;
				goto JELLYFISH ;
			} ],
			[ qr/(?<=$seq\s)\d+/i => sub {
				my $exp = shift ;
				$count += $exp->match() ;
			} ],
		) ;
	}

	# 結果を出力
	print "[@{[ timestamp() ]}] [JellyfishServer] " .
	      "seq=$seq, count=$count\n" ;
	print CLIENT "$count\n" ;
	close CLIENT ;
	print "[@{[ timestamp() ]}] [JellyfishServer] " .
	      "Connection closed.\n" ;
}

exit ;

# ====================
sub timestamp {  # タイムスタンプを 2000-01-01 00:00:00 の形式で出力
my ($sec, $min, $hour, $mday, $mon, $year) = localtime ;
return sprintf("%04d-%02d-%02d %02d:%02d:%02d",
	$year+1900, $mon+1, $mday, $hour, $min, $sec) ;
} ;
# ====================
sub iub_expand {  # 塩基配列のIUBコードを展開してリストを返す
my @in = @_ ;
my @out ;
while (my $seq = shift @in){
	if (
		$seq =~ s/^(.*?)R(.*)$/$1A$2,$1G$2/             or  # R = A/G
		$seq =~ s/^(.*?)r(.*)$/$1a$2,$1g$2/             or
		$seq =~ s/^(.*?)Y(.*)$/$1T$2,$1C$2/             or  # Y = T/C
		$seq =~ s/^(.*?)y(.*)$/$1t$2,$1c$2/             or
		$seq =~ s/^(.*?)K(.*)$/$1T$2,$1G$2/             or  # K = T/G
		$seq =~ s/^(.*?)k(.*)$/$1t$2,$1g$2/             or
		$seq =~ s/^(.*?)M(.*)$/$1A$2,$1C$2/             or  # M = A/C
		$seq =~ s/^(.*?)m(.*)$/$1a$2,$1c$2/             or
		$seq =~ s/^(.*?)S(.*)$/$1G$2,$1C$2/             or  # S = G/C
		$seq =~ s/^(.*?)s(.*)$/$1g$2,$1c$2/             or
		$seq =~ s/^(.*?)W(.*)$/$1A$2,$1T$2/             or  # W = A/T
		$seq =~ s/^(.*?)w(.*)$/$1a$2,$1t$2/             or
		$seq =~ s/^(.*?)B(.*)$/$1T$2,$1G$2,$1C$2/       or  # B = T/G/C
		$seq =~ s/^(.*?)b(.*)$/$1t$2,$1g$2,$1c$2/       or
		$seq =~ s/^(.*?)D(.*)$/$1A$2,$1T$2,$1G$2/       or  # D = A/T/G
		$seq =~ s/^(.*?)d(.*)$/$1a$2,$1t$2,$1g$2/       or
		$seq =~ s/^(.*?)H(.*)$/$1A$2,$1T$2,$1C$2/       or  # H = A/T/C
		$seq =~ s/^(.*?)h(.*)$/$1a$2,$1t$2,$1c$2/       or
		$seq =~ s/^(.*?)V(.*)$/$1A$2,$1G$2,$1C$2/       or  # V = A/G/C
		$seq =~ s/^(.*?)v(.*)$/$1a$2,$1g$2,$1c$2/       or
		$seq =~ s/^(.*?)N(.*)$/$1A$2,$1T$2,$1G$2,$1C$2/ or  # N = A/T/G/C
		$seq =~ s/^(.*?)n(.*)$/$1a$2,$1t$2,$1g$2,$1c$2/
	){
		unshift @in, split(/,/, $seq) ;
	} else {
		push @out, $seq ;
	}
}
return @out ;
} ;
# ====================
