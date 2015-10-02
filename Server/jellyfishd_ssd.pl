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
# atgcatgcatg <- 塩基配列を送信
# 3659 <- ゲノムにおける頻度が整数で返ってくる
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

use warnings ;
use strict ;
use Getopt::Long ;
use Socket ;
use Expect ;

my $jellyfish = '/backup/jellyfish-1.1.10_ssd/bin/jellyfish' ;
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
	my $count = -1 ;  # エラーの場合は -1 を返す
	if ($seq =~ /^[atgc]{$k}$/i){
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
				$count = $exp->match() ;
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
