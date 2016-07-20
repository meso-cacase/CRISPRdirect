package KmerCount ;

# ゲノムにおけるk-merの頻度を返すモジュール
# Jellyfishを用いたサーバプログラムに問い合わせを行う
#
# 2013-12-23 Yuki Naito (@meso_cacase)

use warnings ;
use strict ;
use Socket ;
use DBlist ;  # データベースの正式名およびホスト名/ポート番号の一覧 (DBlist.pm)

# ====================
sub kmercount {

# Jellyfishサーバに問い合わせ、ゲノムにおけるk-merの頻度を整数で返す
# 縮重塩基はサーバ側で展開し頻度の合計を求める
# ただしエラーの際は空白文字を返す
# usage: $count = kmercount('ggctgccaagaacctgcaggNgg', 'hg19') ;

my $seq = $_[0] or return '' ;
my $db  = $_[1] or return '' ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgcnrymkswhbvd]+$/i or return '' ;

my $k = length $seq ;
my ($host, $port) = portselect($db, $k) ;

$port or return '' ;

# ホスト名をIPアドレスの構造体に変換
my $iaddr = inet_aton($host) or
	# die "ERROR : $host does not exist ($!)" ;
	return '' ;

# portとIPアドレスをまとめて構造体に変換
my $sock_addr = pack_sockaddr_in($port, $iaddr) ;

# ソケット生成
socket(SOCKET, PF_INET, SOCK_STREAM, 0) or
	# die "ERROR : cannot create socket ($!)" ;
	return '' ;

# ソケットに接続
connect(SOCKET, $sock_addr) or
	# die "ERROR : cannot connect $host:$port ($!)" ;
	return '' ;

# SOCKETをバッファリングしない
select(SOCKET) ; $|=1 ; select(STDOUT) ;

# queryを送信
print SOCKET "$seq\n";

# 結果を受信
my $count ;
while (<SOCKET>){ $count .= $_ }

# 結果を整数で返す
($count =~ /(-?\d+)/) ? return $1 :
                        return '' ;
} ;
# ====================
sub portselect {  # Jellyfishサーバのホスト名/ポート番号

my $db = $_[0] or return ('localhost', 0) ;
my $k  = $_[1] or return ('localhost', 0) ;

my $dbconf = $DBlist::dbconfig ;  # データベースの正式名およびホスト名/ポート番号のリスト

my (%host, %port) ;
foreach (split /\n/, $dbconf){
	chomp ;
	map {defined $_ ? ($_ =~ s/\s*$//g) : ($_ = '')}  # 後方のスペースを除去
		my ($db, $host, $port_23nt, $port_15nt, $port_11nt) = split /\t/ ;
	$host{$db}     = $host ;
	$port{$db}{23} = $port_23nt ;
	$port{$db}{15} = $port_15nt ;
	$port{$db}{11} = $port_11nt ;
}

my @hostport = (
	$host{$db}     // 'localhost',
	$port{$db}{$k} // 0,
) ;

return @hostport ;
} ;
# ====================

return 1 ;
