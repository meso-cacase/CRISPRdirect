#!/usr/bin/perl

# CRISPRdirect: CRISPR/Casシステムのターゲット配列設計サーバ
#
# 必要なモジュール:
# HTML::Template
# JSON::XS
# LWP::Simple (GetSequence.pm内で使用)
#
# 2013-04-18 Yuki Naito (@meso_cacase) 実装開始

#- ▼ モジュール読み込みと変数の初期化
use warnings ;
use strict ;
use Time::HiRes ;

eval 'use HTML::Template ; 1' or  # HTMLをテンプレート化
	print_error('ERROR : cannot load HTML::Template') ;

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
	'hg19'    => 'Human genome, GRCh37/hg19 (Feb, 2009)',
	'mm10'    => 'Mouse genome, GRCm38/mm10 (Dec, 2011)',
	'rn5'     => 'Rat genome, RGSC 5.0/rn5 (Mar, 2012)',
	'galGal4' => 'Chicken genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)',
	'xenTro3' => 'Xenopus tropicalis genome, JGI 4.2/xenTro3 (Nov, 2009)',
	'danRer7' => 'Zebrafish genome, Zv9/danRer7 (Jul, 2010)',
	'ci2'     => 'Ciona intestinalis genome, JGI 2.1/ci2 (Mar, 2005)',
	'dm3'     => 'Drosophila genome, BDGP R5/dm3 (Apr, 2006)',
	'ce10'    => 'C. elegans genome, WS220/ce10 (Oct, 2010)',
	'TAIR10'  => 'Arabidopsis thaliana genome, TAIR10 (Nov, 2010)',
	'rice'    => 'Rice genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)',
	'bmor1'   => 'Silkworm genome, Bmor1 (Apr, 2008)',
	'sacCer3' => 'S. cerevisiae (S288C) genome, sacCer3 (Apr, 2011)',
) ;
#- ▲ モジュール読み込みと変数の初期化

#- ▼ リクエストからパラメータを取得
push @timer, [Time::HiRes::time(), 'start;'] ;           #===== 実行時間計測 =====

my %query = get_query_parameters() ;   # HTTPリクエストからパラメータを取得

#-- ▽ 使用するパラメータ一覧
my $accession = $query{'accession'} ;  # Accession番号: NM_003380, ...

my $userseq   = $query{'userseq'} ;    # 塩基配列: (FASTA形式または塩基配列のみ)

my $db = lc(                           # 特異性確認のデータベース: hg19, mm10, ...
	$query{'db'} // 'hg19') ;          # default: hg19 (Human genome)

my $format =                           # 出力フォーマット: html, txt, json
	($query{'format'} and $query{'format'} =~ /^(html|txt|json)$/i) ?
	lc($query{'format'}) : '' ;

my $download =                         # ファイルとしてダウンロードするか: (boolean)
	($query{'download'} and $format =~ /^(txt|json)$/) ?
	$query{'download'} : '' ;
#-- △ 使用するパラメータ一覧

#-- ▽ 大文字小文字を正規化
$db =~ s/galGal4/galGal4/i ;
$db =~ s/xenTro3/xenTro3/i ;
$db =~ s/danRer7/danRer7/i ;
$db =~ s/TAIR10/TAIR10/i   ;
$db =~ s/sacCer3/sacCer3/i ;
#-- △ 大文字小文字を正規化
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
		print_error('ERROR : cannot load CRISPRdirect') ;
	my $result = CRISPRdirect::crispr_design($userseq, $db) ;
	$result =~ s/(?<=^# specificity_check:\t)(\w+)/$db_fullname{$1}/m ;

	#--- TXT出力
	if ($format eq 'txt'){
		print_txt($accession, $userseq, $result) ;
	}

	#--- JSON出力
	elsif ($format eq 'json'){
		eval 'require JSON::XS ; 1' or
			print_error('ERROR : cannot load JSON::XS') ;
		print_json($accession, $userseq, $result) ;
	}

	#--- HTML出力
	else {
		my $template = HTML::Template->new(filename => 'result.tmpl') ;
		$template->param(
			TABLE  => tsv2table($result),
			RESULT => $result
		) ;
		print_html($accession, $userseq, $db, $template->output) ;
	}
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
		print_error('ERROR : get_query_parameters() : read failed') ;
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
sub tsv2table {
my $result = $_[0] // '' ;

my $exec_time = ($result =~ /^# \[.*\|\s*(.*?)\s*\]$/m)      ? $1 : '' ;
my $seq_name  = ($result =~ /^# sequence_name:\t(.*)$/m)     ? $1 : '' ;
my $db_name   = ($result =~ /^# specificity_check:\t(.*)$/m) ? $1 : '' ;

my @result = split /\n/, $result ;
@result = grep(!/^#/, @result) or
	return
		"<p>"                                         . "\n" .
		"	<b>Sequence name:</b> $seq_name<br>"      . "\n" .
		"	<b>Specificity check:</b> $db_name<br>"   . "\n" .
		"	<b>Time:</b> $exec_time"                  . "\n" .
		"</p>"                                        . "\n" .
		                                                "\n" .
		"<b style='font-size:12pt; color:#800000'>"   . "\n" .
		"	No candidates were found."                . "\n" .
		"</b>" ;

my $i ;  # foreach() のカウンター
my @table ;
foreach (@result){
	$i ++ ;
	my ($start, $sequence, $pam, $tttt, $tm, $count23, $count15, $count11) = split /\t/ ;
	my $seq15 = substr($sequence, -15) ;
	my $seq11 = substr($sequence, -11) ;
	push @table,
		"<tr>" . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'v' ]}>$start"                                         . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'v' ]}><span class=mono>$sequence</span>"              . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'v' ]}><span class=mono>$pam</span>"                   . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'o' ]}>$tttt"                                          . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'p' ]}>$tm &deg;C"                                     . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]}>$count23"                                       . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]} style='border-left:none; font-size:7pt'>"       . "\n" .
		"		<a target='_blank' href='http://GGGenome.dbcls.jp/en/$db/$sequence'>[detail]</a>" . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]}>$count15"                                       . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]} style='border-left:none; font-size:7pt'>"       . "\n" .
		"		<a target='_blank' href='http://GGGenome.dbcls.jp/en/$db/$seq15'>[detail]</a>"    . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]}>$count11"                                       . "\n" .
		"	<td class=@{[ ($i % 2) ? 'w' : 'g' ]} style='border-left:none; font-size:7pt'>"       . "\n" .
		"		<a target='_blank' href='http://GGGenome.dbcls.jp/en/$db/$seq11'>[detail]</a>"    . "\n" .
		"</tr>" . "\n" ;
}

return
	"<p>"                                         . "\n" .
	"	<b>Sequence name:</b> $seq_name<br>"      . "\n" .
	"	<b>Specificity check:</b> $db_name<br>"   . "\n" .
	"	<b>Time:</b> $exec_time"                  . "\n" .
	"</p>"                                        . "\n" .
	                                                "\n" .
	"<table cellspacing=0 cellpadding=2>"         . "\n" .
	"<tr>"                                        . "\n" .
	"	<th class=v rowspan=2>target<br>position" . "\n" .
	"	<th class=v colspan=2>target sequence"    . "\n" .
	"	<th class=o rowspan=2>A(4)/T(4)"          . "\n" .
	"	<th class=p rowspan=2>Tm"                 . "\n" .
	"	<th class=g colspan=6>off-target hits"    . "\n" .
	"</tr>"                                       . "\n" .
	"<tr>"                                        . "\n" .
	"	<th class=v>20mer+PAM (total 23mer)"      . "\n" .
	"	<th class=v>PAM"                          . "\n" .
	"	<th class=g colspan=2>20mer<br>+PAM"      . "\n" .
	"	<th class=g colspan=2>12mer<br>+PAM"      . "\n" .
	"	<th class=g colspan=2>8mer<br>+PAM"       . "\n" .
	"</tr>"                                       . "\n" .
	"@{[ join '', @table ]}"                      .
	"</table>" ;
} ;
# ====================
sub print_html {  # HTMLを出力
my $accession = $_[0] // ''     ;
my $userseq   = $_[1]           ;
my $db        = $_[2] // 'hg19' ;  # default: hg19 (Human genome)
my $result    = $_[3] // ''     ;

$sampleseq ||= '' ;  # undefを回避

#- ▼ Accession番号からFASTAを取得
not defined $userseq and
$userseq = (not $accession) ?
           	$sampleseq :
           (eval 'require GetSequence ; 1') ?
           	GetSequence::accession2fasta($accession) || $sampleseq :
           	print_error('ERROR : cannot load GetSequence') ;
#- ▲ Accession番号からFASTAを取得

#- ▼ プルダウンメニュー
my $select =
"		<option value=none   >none</option>
		<option value=hg19   >$db_fullname{'hg19'   }</option>
		<option value=mm10   >$db_fullname{'mm10'   }</option>
		<option value=rn5    >$db_fullname{'rn5'    }</option>
		<option value=galGal4>$db_fullname{'galGal4'}</option>
		<option value=xenTro3>$db_fullname{'xenTro3'}</option>
		<option value=danRer7>$db_fullname{'danRer7'}</option>
		<option value=ci2    >$db_fullname{'ci2'    }</option>
		<option value=dm3    >$db_fullname{'dm3'    }</option>
		<option value=ce10   >$db_fullname{'ce10'   }</option>
		<option value=TAIR10 >$db_fullname{'TAIR10' }</option>
		<option value=rice   >$db_fullname{'rice'   }</option>
		<option value=bmor1  >$db_fullname{'bmor1'  }</option>
		<option value=sacCer3>$db_fullname{'sacCer3'}</option>" ;
$db and $select =~ s/(?<=option value=$db)/ selected/i ;  # 生物種を選択
#- ▲ プルダウンメニュー

#- ▼ HTML出力
my $template = HTML::Template->new(filename => 'index.tmpl') ;

$template->param(
	ACCESSION => $accession,
	USERSEQ   => $userseq,
	SELECT    => $select,
	RESULT    => $result
) ;

print "Content-type: text/html; charset=utf-8\n\n" ;
print $template->output ;
#- ▲ HTML出力

exit ;
} ;
# ====================
sub print_txt {  # TXTを出力
my $accession = $_[0] // '' ;
my $userseq   = $_[1] // '' ;
my $result    = $_[2] // '' ;

print "Content-type: text/plain; charset=utf-8\n" ;
$download and  # ファイルとしてダウンロードする場合
	print "Content-Disposition: attachment; filename=CRISPRdirect.txt\n" ;
print "\n" ;
print "$result\n" ;

exit ;
} ;
# ====================
sub print_json {  # JSONを出力
my $accession = $_[0] // '' ;
my $userseq   = $_[1] // '' ;
my $result    = $_[2] // '' ;

my $prog_name = ($result =~ /^# \[\s*(.*?)\s*\|.*\]$/m)      ? $1 : '' ;
my $exec_time = ($result =~ /^# \[.*\|\s*(.*?)\s*\]$/m)      ? $1 : '' ;
my $seq_name  = ($result =~ /^# sequence_name:\t(.*)$/m)     ? $1 : '' ;
my $db_name   = ($result =~ /^# specificity_check:\t(.*)$/m) ? $1 : '' ;

my @result = split /\n/, $result ;
@result = grep(!/^#/, @result) ;

my @json ;
foreach (@result){
	my ($start, $sequence, $pam, $tttt, $tm, $count23, $count15, $count11) = split /\t/ ;
	push @json, {
		position  => $start,
		sequence  => $sequence,
		pam       => $pam,
		tttt      => $tttt,
		tm        => $tm,
		hit_20mer => $count23,
		hit_12mer => $count15,
		hit_8mer  => $count11
	}
}

print "Content-type: application/json; charset=utf-8\n" ;
$download and  # ファイルとしてダウンロードする場合
	print "Content-Disposition: attachment; filename=CRISPRdirect.json\n" ;
print "\n" ;
print JSON::XS->new->canonical->utf8->encode({
	program_name      => $prog_name,
	time              => $exec_time,
	sequence_name     => $seq_name,
	specificity_check => $db_name,
	results           => \@json
}) ;

exit ;
} ;
# ====================
sub print_error {  # エラーを出力
my $text = $_[0] // '' ;

print "Content-type: text/html; charset=utf-8\n\n" ;
print "$text\n" ;

exit ;
} ;
# ====================
