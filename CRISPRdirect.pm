package CRISPRdirect ;

# CRISPRdirectモジュール
#
# 2013-05-28 Yuki Naito (@meso_cacase)

use warnings ;
use strict ;

# ====================
sub crispr_design {

# 塩基配列とDBからCRISPR/Casシステムのターゲット配列を設計
#
# usage: $tsv = crispr_design($userseq, $db) ;

my $targetlength = 20 ;

my $fasta = $_[0] or return '' ;
my $db    = $_[1] // '' ;

my ($name, $seq) = readFASTA($fasta) ;
$name ||= 'YourSeq' ;
$seq = rna2dna(flatsequence($seq)) ;

#- ▼ すべての部分配列を生成
my @targetlist ;
foreach (1..length($seq) - $targetlength + 1){
	my $targetseq = substr($seq, $_ - 1, $targetlength) ;
	push @targetlist, {
		'start'    => $_,
		'sequence' => $targetseq
	} ;
}
#- ▲ すべての部分配列を生成

#- ▼ 結果をタブ区切りテキストで出力
my $tsv = "# $name\n" ;
foreach (@targetlist){
	$tsv .= $$_{'start'}    . "\t" ;
	$tsv .= $$_{'sequence'} . "\n" ;
}
#- ▲ 結果をタブ区切りテキストで出力

return $tsv ;
} ;
# ====================
sub readFASTA {

# FASTA形式をパースし配列名と配列を抽出
# multi FASTAの場合は1番目の配列名と配列を抽出
#
# usage: ($name, $seq) = readFASTA($fasta) ;

my $seq  = $_[0] // '' ;
my $name = ($seq =~ s/\A\s*>(.*)$//m) ? $1 : '' ;
$seq  =~ s/>.*//sm ;         # 2番目以降の配列を除去
$seq  =~ s/(^\s*|\s*$)//g ;  # 前後の空白を除去
$name =~ s/(^\s*|\s*$)//g ;  # 前後の空白を除去
return ($name, $seq) ;
} ;
# ====================
sub flatsequence {

# 塩基構成文字以外を除去
#
# usage: $ntseq = flatsequence('121 gctaccagct ttctgagagc agcaagatca') ;

my $seq = $_[0] or return '' ;
$seq =~ s/[^ATGCUNRYMKSWHBVD-]//gi ;
return $seq ;
} ;
# ====================
sub rna2dna {

# 塩基配列中のUをTに置換
#
# usage: $dnaseq = rna2dna('GCACUGUAcguagc') ;  # GCACTGTAcgtagc

my $seq = $_[0] or return '' ;
$seq =~ tr/Uu/Tt/ ;
return $seq ;
} ;
# ====================

return 1 ;
