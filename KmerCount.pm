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

# ゲノムにおけるk-merの頻度を整数で返す
# 縮重塩基は展開して頻度の合計を求める
# ただしエラーの際は空白文字を返す
# usage: $count = kmercount('ggctgccaagaacctgcaggNgg', 'hg19') ;

my $seq = $_[0] or return '' ;
my $db  = $_[1] or return '' ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgcnrymkswhbvd]+$/i or return '' ;

# 縮重塩基を展開し、頻度の合計を求める
my @seq = iub_expand($seq) ;
my $count = 0 ;
foreach (@seq){
	my $kmercount = kmercount_core($_, $db) ;
	($kmercount eq '') and return '' ;
	$count += $kmercount ;
}
return $count ;
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
sub kmercount_core {

# Jellyfishサーバに問い合わせ、ゲノムにおけるk-merの頻度を整数で返す
# ただしエラーの際は空白文字を返す
# usage: $count = kmercount_core('ggctgccaagaacctgcaggagg', 'hg19') ;

my $seq = $_[0] or return '' ;
my $db  = $_[1] or return '' ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgc]+$/i or return '' ;

my $k    = length $seq ;
my $host = 'localhost' ;
my %port = portselect() ;
my $port = $port{$db}{$k} // 0 ;

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
sub portselect {  # Jellyfishサーバのポート番号対応表

my $portconfig = <<'--EOS--' ;
hg19	23	6738
hg19	15	6737
hg19	11	6736
mm10	23	6748
mm10	15	6747
mm10	11	6746
rn5	23	6758
rn5	15	6757
rn5	11	6756
calJac3	23	6888
calJac3	15	6887
calJac3	11	6886
susScr3	23	6878
susScr3	15	6877
susScr3	11	6876
galGal4	23	6768
galGal4	15	6767
galGal4	11	6766
xenTro3	23	6778
xenTro3	15	6777
xenTro3	11	6776
Xenla7	23	6898
Xenla7	15	6897
Xenla7	11	6896
danRer7	23	6788
danRer7	15	6787
danRer7	11	6786
ci2	23	6798
ci2	15	6797
ci2	11	6796
dm3	23	6808
dm3	15	6807
dm3	11	6806
ce10	23	6818
ce10	15	6817
ce10	11	6816
TAIR10	23	6828
TAIR10	15	6827
TAIR10	11	6826
rice	23	6838
rice	15	6837
rice	11	6836
sorBic	23	6868
sorBic	15	6867
sorBic	11	6866
bmor1	23	6848
bmor1	15	6847
bmor1	11	6846
sacCer3	23	6858
sacCer3	15	6857
sacCer3	11	6856
pombe	23	6908
pombe	15	6907
pombe	11	6906
--EOS--

my %port ;
foreach (split /\n/, $portconfig){
	chomp ;
	my ($db, $k, $port) = split /\t/ ;
	$port{$db}{$k} = $port ;
}

return %port ;
} ;
# ====================

return 1 ;
