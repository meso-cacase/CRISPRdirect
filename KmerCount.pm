package KmerCount ;

# ゲノムにおけるk-merの頻度を返すモジュール
# Jellyfishを用いたサーバプログラムに問い合わせを行う
#
# 2013-12-23 Yuki Naito (@meso_cacase)

use warnings ;
use strict ;
use Socket ;

# ====================
sub count23 {

# Jellyfishサーバに問い合わせ、ゲノムにおける23merの頻度を整数で返す
# ただし、エラーの際は -1 を返す
# usage: $count = count23('ggctgccaagaacctgcaggagg') ;

my $seq  = $_[0] ;
my $host = 'localhost' ;
my $port = 6740 ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgc]{23}$/i or
	return -1 ;

# ホスト名をIPアドレスの構造体に変換
my $iaddr = inet_aton($host) or
	# die "ERROR : $host does not exist ($!)" ;
	return -1 ;

# portとIPアドレスをまとめて構造体に変換
my $sock_addr = pack_sockaddr_in($port, $iaddr) ;

# ソケット生成
socket(SOCKET, PF_INET, SOCK_STREAM, 0) or
	# die "ERROR : cannot create socket ($!)" ;
	return -1 ;

# ソケットに接続
connect(SOCKET, $sock_addr) or
	# die "ERROR : cannot connect $host:$port ($!)" ;
	return -1 ;

# SOCKETをバッファリングしない
select(SOCKET) ; $|=1 ; select(STDOUT) ;

# queryを送信
print SOCKET "$seq\n";

# 結果を受信
my $count ;
while (<SOCKET>){ $count .= $_ }

# 結果を整数で返す
($count =~ /(-?\d+)/) ? return $1 :
                        return -1 ;
} ;
# ====================
sub count15 {

# Jellyfishサーバに問い合わせ、ゲノムにおける15merの頻度を整数で返す
# ただし、エラーの際は -1 を返す
# usage: $count = count15('agaacctgcaggagg') ;

my $seq  = $_[0] ;
my $host = 'localhost' ;
my $port = 6739 ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgc]{15}$/i or
	return -1 ;

# ホスト名をIPアドレスの構造体に変換
my $iaddr = inet_aton($host) or
	# die "ERROR : $host does not exist ($!)" ;
	return -1 ;

# portとIPアドレスをまとめて構造体に変換
my $sock_addr = pack_sockaddr_in($port, $iaddr) ;

# ソケット生成
socket(SOCKET, PF_INET, SOCK_STREAM, 0) or
	# die "ERROR : cannot create socket ($!)" ;
	return -1 ;

# ソケットに接続
connect(SOCKET, $sock_addr) or
	# die "ERROR : cannot connect $host:$port ($!)" ;
	return -1 ;

# SOCKETをバッファリングしない
select(SOCKET) ; $|=1 ; select(STDOUT) ;

# queryを送信
print SOCKET "$seq\n";

# 結果を受信
my $count ;
while (<SOCKET>){ $count .= $_ }

# 結果を整数で返す
($count =~ /(-?\d+)/) ? return $1 :
                        return -1 ;
} ;
# ====================
sub count11 {

# Jellyfishサーバに問い合わせ、ゲノムにおける11merの頻度を整数で返す
# ただし、エラーの際は -1 を返す
# usage: $count = count11('cctgcaggagg') ;

my $seq  = $_[0] ;
my $host = 'localhost' ;
my $port = 6738 ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgc]{11}$/i or
	return -1 ;

# ホスト名をIPアドレスの構造体に変換
my $iaddr = inet_aton($host) or
	# die "ERROR : $host does not exist ($!)" ;
	return -1 ;

# portとIPアドレスをまとめて構造体に変換
my $sock_addr = pack_sockaddr_in($port, $iaddr) ;

# ソケット生成
socket(SOCKET, PF_INET, SOCK_STREAM, 0) or
	# die "ERROR : cannot create socket ($!)" ;
	return -1 ;

# ソケットに接続
connect(SOCKET, $sock_addr) or
	# die "ERROR : cannot connect $host:$port ($!)" ;
	return -1 ;

# SOCKETをバッファリングしない
select(SOCKET) ; $|=1 ; select(STDOUT) ;

# queryを送信
print SOCKET "$seq\n";

# 結果を受信
my $count ;
while (<SOCKET>){ $count .= $_ }

# 結果を整数で返す
($count =~ /(-?\d+)/) ? return $1 :
                        return -1 ;
} ;
# ====================

return 1 ;
