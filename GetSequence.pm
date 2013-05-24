package GetSequence ;

# Accession番号から配列情報を取得するためのモジュール
#
# 2013-05-24 Yuki Naito (@meso_cacase)

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

my $uri   = "http://130.14.29.110/sviewer/" .
            "?report=fasta&retmode=text&val=$accession" ;
            # 130.14.29.110 = www.ncbi.nlm.nih.gov (DNS参照時間を短縮)

my $fasta = get($uri) || "\nCannot retrieve sequence\n" ;

return $fasta ;
} ;
# ====================

return 1 ;
