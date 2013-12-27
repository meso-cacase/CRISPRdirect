package CRISPRdirect ;

# CRISPRdirectモジュール
#
# 2013-05-28 Yuki Naito (@meso_cacase)

use warnings ;
use strict ;

eval 'use KmerCount ; 1' or  # ゲノムにおけるk-merの頻度を求めるためのモジュール
	die 'ERROR : cannot load KmerCount' ;

# ====================
sub crispr_design {

# 塩基配列とDBからCRISPR/Casシステムのターゲット配列を設計
#
# usage: $tsv = crispr_design($userseq, $db) ;

my $targetlength = 23 ;

my $fasta = $_[0] or return '' ;
my $db    = $_[1] // '' ;

my ($name, $seq) = readFASTA($fasta) ;
$name ||= 'YourSeq' ;
$seq = rna2dna(flatsequence($seq)) ;

#- ▼ すべての部分配列を生成
my @targetlist ;
foreach (1..length($seq) - $targetlength + 1){
	my $position  = $_ ;
	my $targetseq = substr($seq, $position - 1, $targetlength) ;
	my $pam       = substr($targetseq, -3) ;

	if ($pam =~ /GG$/i){
		my $tttt    = ($targetseq =~ /(AAAA|TTTT)/i) ? 'true' : 'false' ;
		my $tm      = tm_RNA(dna2rna($targetseq)) ;
		my $count23 = KmerCount::kmercount(substr($targetseq, -23), $db) ;
		my $count15 = KmerCount::kmercount(substr($targetseq, -15), $db) ;
		my $count11 = KmerCount::kmercount(substr($targetseq, -11), $db) ;
		push @targetlist, {
			'start'    => $position,
			'sequence' => $targetseq,
			'pam'      => $pam,
			'tttt'     => $tttt,
			'tm'       => $tm,
			'count23'  => $count23,
			'count15'  => $count15,
			'count11'  => $count11
		} ;
	}
}
#- ▲ すべての部分配列を生成

#- ▼ タブ区切りテキストを出力
my $tsv =
"# [ CRISPRdirect | @{[ timestamp() ]} ]
# sequence_name:	$name
# specificity_check:	$db
# position	sequence	PAM	A(4)/T(4)	Tm	hit_23mer	hit_15mer	hit_11mer
#
" ;
foreach (@targetlist){
	$tsv .= join "\t", (
		$$_{'start'},
		$$_{'sequence'},
		$$_{'pam'},
		$$_{'tttt'},
		$$_{'tm'},
		$$_{'count23'},
		$$_{'count15'},
		$$_{'count11'}
	) ;
	$tsv .= "\n" ;
}
#- ▲ タブ区切りテキストを出力

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
# usage: $ntseq = flatsequence('
#   1 agaggctgcg gtgagtccgc cagccccagc tgctcctcct caagccccca aggcccttcg
#  61 gcgggcccct gctgaaagac cggcatgccc tattctgtgg gcttccgcga agccgatgct
# 121 gctaccagct ttctgagagc agcaagatca ggtaacttgg acaaagcttt ggatcacctg') ;

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
sub dna2rna {

# 塩基配列中のTをUに置換
#
# usage: $rnaseq = dna2rna('GCACTGTAcgtagc') ;  # GCACUGUAcguagc

my $seq = $_[0] or return '' ;
$seq =~ tr/Tt/Uu/ ;
return $seq ;
} ;
# ====================
sub tm_RNA {

# ニアレストネイバー法による二本鎖RNAのTm
#
# usage: $tm = tm_RNA('GGCUGCCAAGAACCUGCAGG') ;

my $seq = lc ($_[0] // '') ;
$seq =~ /^[augc]+$/ or return '' ;

my $dH  = deltaH_RNA($seq) or return '' ;
my $dS  = deltaS_RNA($seq) or return '' ;

# Tmの計算：100nM, [Na+] = 100mM
my $tm = ( 1000 * $dH / ( -10.8 + $dS + 1.987 * log(0.0001/4) )
	- 273.15 + 16.6 * log(0.1)/log(10) ) ;

# Tmの計算：定数をゼロにしている
# my $tm = ( 1000 * $dH / ( $dS + 1.987 * log(0.0001) ) - 273.15 ) ;

# Tmの計算：初期の程先生の条件
# my $tm = ( 1000 * $dH / ( -10.8 + $dS + 1.987 * log(0.000001/4) )
# 	- 273.15 + 16.6 * log(0.1)/log(10) ) ;

return sprintf("%.2f", $tm) ;
} ;
# ====================
sub deltaH_RNA {  # Tmの計算に使用
my $seq = lc ($_[0] // '') ;
$seq =~ /^[augc]+$/ or return '' ;

my %rna_dH = (
	'aa' =>  -6.6,
	'uu' =>  -6.6,
	'au' =>  -5.7,
	'ua' =>  -8.1,
	'ca' => -10.5,
	'ug' => -10.5,
	'cu' =>  -7.6,
	'ag' =>  -7.6,
	'ga' => -13.3,
	'uc' => -13.3,
	'gu' => -10.2,
	'ac' => -10.2,
	'cg' =>  -8.0,
	'gc' => -14.2,
	'gg' => -12.2,
	'cc' => -12.2
) ;

my $sum_dH = 0 ;
foreach (0..length($seq) - 2){
	my $dinucleotide = substr($seq, $_, 2) ;
	$sum_dH += $rna_dH{$dinucleotide} ;
}

return $sum_dH ;
} ;
# ====================
sub deltaS_RNA {  # Tmの計算に使用
my $seq = lc ($_[0] // '') ;
$seq =~ /^[augc]+$/ or return '' ;

my %rna_dS = (
	'aa' => -18.4,
	'uu' => -18.4,
	'au' => -15.5,
	'ua' => -22.6,
	'ca' => -27.8,
	'ug' => -27.8,
	'cu' => -19.2,
	'ag' => -19.2,
	'ga' => -35.5,
	'uc' => -35.5,
	'gu' => -26.2,
	'ac' => -26.2,
	'cg' => -19.4,
	'gc' => -34.9,
	'gg' => -29.7,
	'cc' => -29.7
) ;

my $sum_dS = 0 ;
foreach (0..length($seq) - 2){
	my $dinucleotide = substr($seq, $_, 2) ;
	$sum_dS += $rna_dS{$dinucleotide} ;
}

return $sum_dS ;
} ;
# ====================
sub timestamp {  # タイムスタンプを 2000-01-01 00:00:00 の形式で出力
my ($sec, $min, $hour, $mday, $mon, $year) = localtime ;
return sprintf("%04d-%02d-%02d %02d:%02d:%02d",
	$year+1900, $mon+1, $mday, $hour, $min, $sec) ;
} ;
# ====================

return 1 ;
