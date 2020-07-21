package KmerCount ;

# ゲノムにおけるk-merの頻度を返すモジュール
# Jellyfishを用いたサーバプログラムに問い合わせを行う
#
# 2013-12-23 Yuki Naito (@meso_cacase)
# 2020-07-21 Yuki Naito (@meso_cacase) k-merカウントをJellyfishからGGGenome Count APIに置換

use warnings ;
use strict ;
use LWP::Simple qw($ua get) ;
use DBlist ;  # データベースの正式名およびホスト名/ポート番号の一覧 (DBlist.pm)

# ====================
sub kmercount {

# GGGenome coutAPIを利用し、ゲノムにおけるk-merの頻度を整数で返す
# 縮重塩基はサーバ側で展開し頻度の合計を求める
# ただしエラーの際は空白文字を返す
# usage: $count = kmercount('ggctgccaagaacctgcaggNgg', 'hg19', '-23,-15,-11') ;

my $seq = $_[0] or return '' ;
my $db  = $_[1] or return '' ;
my $length = $_[2] // length($seq) ;

# 入力文字列のチェック
chomp $seq ;
$seq =~ /^[atgcnrymkswhbvd]+$/i or return '' ;

my $k = length $seq ;
my ($host, $port) = portselect($db, $k) ;

my $uri = "http://$host:$port/count?q=$seq&len=$length&format=text&timeout=0" ;
my $count = get($uri) or return '' ;

# 結果をアレイで返す
($count =~ /^([\d,]+)/) ? return split(/,/, $1) :
                          return () ;
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
		my ($db, $host, $port) = split /\t/ ;
	$host{$db} = $host ;
	$port{$db} = $port ;
}

my @hostport = (
	$host{$db} // 'localhost',
	$port{$db} // 0,
) ;

return @hostport ;
} ;
# ====================

return 1 ;
