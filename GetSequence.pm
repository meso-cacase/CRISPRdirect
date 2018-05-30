package GetSequence ;

# Accession番号から配列情報を取得するためのモジュール
#
# 2013-05-24 Yuki Naito (@meso_cacase)
# 2014-04-13 Yuki Naito (@meso_cacase) ゲノム座標からの配列取得に対応

use warnings ;
use strict ;
use LWP::Simple ;  # NCBIへの問い合わせに使用

# ====================
sub accession2fasta {

# Accession番号をもとにNCBIからFASTAを取得
#
# usage: $fasta = accession2fasta('NM_003380') ;
#
# エラーメッセージ :
# Accession番号が空文字または未定義 → '' (空文字を返す)
# Accession番号が不正な文字を含む　 → 'Cannot retrieve sequence'
# NCBIへの問い合わせに失敗　　　　　 → 'Cannot retrieve sequence'
# NCBIへ問い合わせたがヒットなし　　 → 'Nothing has been found'

# Accession番号が空文字または未定義でないか？
my $accession = $_[0] or return '' ;

# Accession番号が不正な文字を含まないか？
$accession =~ /^[\w\.]+$/ or return "\nCannot retrieve sequence\n" ;

my $uri   = "https://www.ncbi.nlm.nih.gov/sviewer/" .
            "?report=fasta&retmode=text&val=$accession" ;

my $fasta = get($uri) || "\nCannot retrieve sequence\n" ;

return $fasta ;
} ;
# ====================
sub getgenomefasta {

# ゲノムの座標をもとにTogoWSからFASTAを取得
#
# usage: $fasta = getgenomefasta('hg19:chr7:900,000-901,000') ;
#
# エラーメッセージ :
# 問い合わせに失敗　　 → 'Cannot retrieve sequence'
# 座標の範囲が長すぎる → 'Sequence too long'
#
# 参考 :
# http://togows.org/api/ucsc/hg19/chr7:900,000-901,000.fasta

my $maxlength = 10000 ;

# 入力がが空文字または未定義でないか？
my $query = $_[0] or return '' ;

# 各変数が不正な文字を含まないか？
$query =~ /(\w+):([^:]+):([,\d]+)-([,\d]+)/ or return "\nCannot retrieve sequence\n" ;

my $db    = lc ($1 // '') ;
my $chr   = $2 // '' ;
my $start = $3 // '' ;
my $end   = $4 // '' ;

abs($start - $end) > $maxlength and return "\nSequence too long\n" ;

my $uri   = "http://togows.org/api/ucsc/" .
            "$db/$chr:$start-$end.fasta" ;

my $fasta = get($uri) || "\nCannot retrieve sequence\n" ;

return $fasta ;
} ;
# ====================

return 1 ;
