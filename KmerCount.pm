package KmerCount ;

# ゲノムにおけるk-merの頻度を返すモジュール
# Jellyfishを用いたサーバプログラムに問い合わせを行う
#
# 2013-12-23 Yuki Naito (@meso_cacase)

use warnings ;
use strict ;
use Socket ;

# ====================
sub kmercount {

# Jellyfishサーバに問い合わせ、ゲノムにおけるk-merの頻度を整数で返す
# ただしエラーの際は空白文字を返す
# usage: $count = kmercount('ggctgccaagaacctgcaggagg', 'hg19') ;

my $seq = $_[0] or return '' ;
my $db  = $_[1] or return '' ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgc]+$/i or return '' ;

my $k    = length $seq ;
my $host = 'localhost' ;
my $port =
	($db eq 'hg19') ?
		($k == 23) ? 6738 :
		($k == 15) ? 6737 :
		($k == 11) ? 6736 :
		                0 :
	($db eq 'mm10') ?
		($k == 23) ? 6748 :
		($k == 15) ? 6747 :
		($k == 11) ? 6746 :
		                0 :
	($db eq 'rn5') ?
		($k == 23) ? 6758 :
		($k == 15) ? 6757 :
		($k == 11) ? 6756 :
		                0 :
	($db eq 'calJac3') ?
		($k == 23) ? 6888 :
		($k == 15) ? 6887 :
		($k == 11) ? 6886 :
		                0 :
	($db eq 'susScr3') ?
		($k == 23) ? 6878 :
		($k == 15) ? 6877 :
		($k == 11) ? 6876 :
		                0 :
	($db eq 'galGal4') ?
		($k == 23) ? 6768 :
		($k == 15) ? 6767 :
		($k == 11) ? 6766 :
		                0 :
	($db eq 'xenTro3') ?
		($k == 23) ? 6778 :
		($k == 15) ? 6777 :
		($k == 11) ? 6776 :
		                0 :
	($db eq 'danRer7') ?
		($k == 23) ? 6788 :
		($k == 15) ? 6787 :
		($k == 11) ? 6786 :
		                0 :
	($db eq 'ci2') ?
		($k == 23) ? 6798 :
		($k == 15) ? 6797 :
		($k == 11) ? 6796 :
		                0 :
	($db eq 'dm3') ?
		($k == 23) ? 6808 :
		($k == 15) ? 6807 :
		($k == 11) ? 6806 :
		                0 :
	($db eq 'ce10') ?
		($k == 23) ? 6818 :
		($k == 15) ? 6817 :
		($k == 11) ? 6816 :
		                0 :
	($db eq 'TAIR10') ?
		($k == 23) ? 6828 :
		($k == 15) ? 6827 :
		($k == 11) ? 6826 :
		                0 :
	($db eq 'rice') ?
		($k == 23) ? 6838 :
		($k == 15) ? 6837 :
		($k == 11) ? 6836 :
		                0 :
	($db eq 'sorBic') ?
		($k == 23) ? 6868 :
		($k == 15) ? 6867 :
		($k == 11) ? 6866 :
		                0 :
	($db eq 'bmor1') ?
		($k == 23) ? 6848 :
		($k == 15) ? 6847 :
		($k == 11) ? 6846 :
		                0 :
	($db eq 'sacCer3') ?
		($k == 23) ? 6858 :
		($k == 15) ? 6857 :
		($k == 11) ? 6856 :
		                0 :
		0 ;

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

return 1 ;
