#!/usr/bin/perl

# CRISPRdirect: CRISPR/Casシステムのターゲット配列設計サーバ
#
# 必要なモジュール:
# HTML::Template
# LWP::Simple (GetSequence.pm内で使用)
#
# 2013-04-18 Yuki Naito (@meso_cacase) 実装開始

#- ▼ モジュール読み込みと変数の初期化
use warnings ;
use strict ;
use Time::HiRes ;

eval 'use HTML::Template ; 1' or  # HTMLをテンプレート化
	print_result('ERROR : cannot load HTML::Template') ;

my @timer ;                       # 実行時間計測用
my $timestamp = timestamp() ;     # CGIを実行した時刻

my $sampleseq =                   # トップページで表示するサンプル配列
'>sample sequence
ggctgccaag aacctgcagg aggcagaaga atggtacaaa tccaagtttg ctgacctctc
tgaggctgcc aaccggaaca atgacgccct gcgccaggca aagcaggagt ccactgagta
ccggagacag gtgcagtccc tcacctgtga agtggatgcc cttaaaggaa ccaatgagtc
cctggaacgc cagatgcgtg aaatggaaga gaactttgcc gttgaagctg ctaactacca
agacactatt ggccgcctgc aggatgagat tcagaatatg aaggaggaaa tggctcgtca
ccttcgtgaa taccaagacc tgctcaatgt taagatggcc cttgacattg agattgccac
ctacaggaag ctgctggaag gcgaggagag caggatttct ctgcctcttc caaacttttc
ctccctgaac ctgagggaaa ctaatctgga ttcactccct ctggttgata cccactcaaa
aaggacactt ctgattaaga cggttgaaac tagagatgga caggttatca acgaaacttc
tcagcatcac gatgaccttg aataaaaatt gcacacactc agtgcagcaa tatattacca
' ;

my %db_fullname = (               # データベースの正式名
	'hg19'   => 'Human genome, GRCh37/hg19 (Feb, 2009)',
	# 'mm10'   => 'Mouse genome, GRCm38/mm10 (Dec, 2011)',
	# 'rn5'    => 'Rat genome, RGSC 5.0/rn5 (Mar, 2012)',
	# 'dm3'    => 'Drosophila genome, BDGP Rel. 5/dm3 (Apr, 2006)',
	# 'ce10'   => 'C. elegans genome, WS220/ce10 (Oct, 2010)',
) ;
#- ▲ モジュール読み込みと変数の初期化

#- ▼ リクエストからパラメータを取得
push @timer, [Time::HiRes::time(), 'start;'] ;           #===== 実行時間計測 =====

my %query = get_query_parameters() ;   # HTTPリクエストからパラメータを取得

#-- ▽ 使用するパラメータ一覧
my $accession = $query{'accession'} ;  # Accession番号: NM_003380, ...

my $userseq   = $query{'userseq'} ;    # 塩基配列: (FASTA形式または塩基配列のみ)

my $db = lc(                           # 特異性確認のデータベース: hg19, mm10, ...
	$query{'db'} // '') ;

my $format =                           # 出力フォーマット: html, txt, json
	($query{'format'} and $query{'format'} =~ /^(html|txt|json)$/i) ?
	lc($query{'format'}) : '' ;

my $download =                         # ファイルとしてダウンロードするか: (boolean)
	($query{'download'} and $format =~ /^(txt|json)$/) ?
	$query{'download'} : '' ;
#-- △ 使用するパラメータ一覧
#- ▲ リクエストからパラメータを取得

#- ▼ パラメータに応じて画面遷移
#-- userseqなしでformat=txt：FASTAを取得してテキスト出力
if (not defined $userseq and $format eq 'txt'){
	#--- ▽ Accession番号からFASTAを取得
	my $fasta = (not $accession) ?
	            	$sampleseq :
	            (eval 'require GetSequence ; 1') ?
	            	GetSequence::accession2fasta($accession) || $sampleseq :
	            	"ERROR : cannot load GetSequence\n" ;
	#--- △ Accession番号からFASTAを取得

	#--- ▽ TXT出力
	print "Content-type: text/plain; charset=utf-8\n\n" ;
	print $fasta ;
	#--- △ TXT出力

	exit ;
}

#-- userseqなし：トップページ表示、accessionありの場合は配列を取得
elsif (not defined $userseq){
	print_html($accession) ;
}

#-- userseqあり：配列設計を行い結果を出力
else {
	eval 'require CRISPRdirect ; 1' or
		print_result('ERROR : cannot load CRISPRdirect') ;
	my $result = CRISPRdirect::crispr_design($userseq, $db) ;

	my $html =
		"<h4>Results:</h4>\n"                                .
		"<p>You can copy-paste into spreadsheet softwares\n" .
		"(<i>e.g.</i> Excel) or text editors.</p>\n"         .
		"<div>\n"                                            .
		"<textarea rows=30 cols=100>$result</textarea>\n"    .
		"</div>\n" ;
	print_html($accession, $userseq, $html) ;
}
#- ▲ パラメータに応じて画面遷移

exit ;

# ====================
sub timestamp {  # タイムスタンプを 2000-01-01 00:00:00 の形式で出力
my ($sec, $min, $hour, $mday, $mon, $year) = localtime ;
return sprintf("%04d-%02d-%02d %02d:%02d:%02d",
	$year+1900, $mon+1, $mday, $hour, $min, $sec) ;
} ;
# ====================
sub get_query_parameters {  # CGIが受け取ったパラメータの処理
my $buffer = '' ;
if (defined $ENV{'REQUEST_METHOD'} and
	$ENV{'REQUEST_METHOD'} eq 'POST' and
	defined $ENV{'CONTENT_LENGTH'}
){
	eval 'read(STDIN, $buffer, $ENV{"CONTENT_LENGTH"})' or
		print_result('ERROR : get_query_parameters() : read failed') ;
} elsif (defined $ENV{'QUERY_STRING'}){
	$buffer = $ENV{'QUERY_STRING'} ;
}
my %query ;
my @query = split /&/, $buffer ;
foreach (@query){
	my ($name, $value) = split /=/ ;
	if (defined $name and defined $value){
		$value =~ tr/+/ / ;
		$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack('C', hex($1))/eg ;
		$name  =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack('C', hex($1))/eg ;
		$query{lc($name)} = $value ;
	}
}
return %query ;
} ;
# ====================
sub print_html {  # HTMLを出力
my $accession = $_[0] // '' ;
my $userseq   = $_[1]       ;
my $result    = $_[2] // '' ;

$sampleseq ||= '' ;  # undefを回避

#- ▼ Accession番号からFASTAを取得
not defined $userseq and
$userseq = (not $accession) ?
           	$sampleseq :
           (eval 'require GetSequence ; 1') ?
           	GetSequence::accession2fasta($accession) || $sampleseq :
           	"ERROR : cannot load GetSequence\n" ;
#- ▲ Accession番号からFASTAを取得

#- ▼ HTML出力
my $template = HTML::Template->new(filename => 'template/top.tmpl') ;

$template->param(
	ACCESSION => $accession,
	USERSEQ   => $userseq,
	RESULT    => $result
) ;

print "Content-type: text/html; charset=utf-8\n\n" ;
print $template->output ;
#- ▲ HTML出力

exit ;
} ;
# ====================
sub print_result {  # $format (global変数) にあわせて結果を出力
(defined $format and $format eq 'txt' ) ? print_result_txt($_[0])  :
(defined $format and $format eq 'json') ? print_result_json($_[0]) :
                                          print_result_html($_[0]) ;
                                          # default format: html
exit ;
} ;
# ====================
sub print_result_txt {  # TXTを出力
# ■■■ 未実装 ■■■
print_result_html($_[0]) ;  # temporary
exit ;
} ;
# ====================
sub print_result_json {  # JSONを出力
# ■■■ 未実装 ■■■
print_result_html($_[0]) ;  # temporary
exit ;
} ;
# ====================
