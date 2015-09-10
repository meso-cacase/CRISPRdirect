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

my $dbconf = $DBlist::dbconfig ;  # データベースの正式名およびホスト名/ポート番号のリスト

my %port ;
foreach (split /\n/, $dbconf){
	chomp ;
	map {defined $_ ? ($_ =~ s/\s*$//g) : ($_ = '')}  # 後方のスペースを除去
		my ($db, $host, $port_23nt, $port_15nt, $port_11nt) = split /\t/ ;
	$port{$db}{23} = $port_23nt ;
	$port{$db}{15} = $port_15nt ;
	$port{$db}{11} = $port_11nt ;
}

return %port ;
} ;
# ====================

return 1 ;
