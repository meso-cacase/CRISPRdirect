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
use CGI ;

eval 'use HTML::Template ; 1' or  # HTMLをテンプレート化
	print_error('ERROR : cannot load HTML::Template') ;

my @timer ;                       # 実行時間計測用
my $timestamp = timestamp() ;     # CGIを実行した時刻

my $maxfilesize = 20 * 1024 ;     # アップロードできるファイル容量の上限

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
	'hg19'    => 'Human (Homo sapiens) genome, GRCh37/hg19 (Feb, 2009)',
	'mm10'    => 'Mouse (Mus musculus) genome, GRCm38/mm10 (Dec, 2011)',
	'rn5'     => 'Rat (Rattus norvegicus) genome, RGSC 5.0/rn5 (Mar, 2012)',
	'calJac3' => 'Marmoset (Callithrix jacchus) genome, WUGSC 3.2/calJac3 (Mar, 2009)',
	'susScr3' => 'Pig (Sus scrofa) genome, SGSC Sscrofa10.2/susScr3 (Aug, 2011)',
	'galGal4' => 'Chicken (Gallus gallus) genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)',
	'xenTro3' => 'Frog (Xenopus tropicalis) genome, JGI 4.2/xenTro3 (Nov, 2009)',
	'danRer7' => 'Zebrafish (Danio rerio) genome, Zv9/danRer7 (Jul, 2010)',
	'ci2'     => 'Sea squirt (Ciona intestinalis) genome, JGI 2.1/ci2 (Mar, 2005)',
	'dm3'     => 'Fruit fly (Drosophila melanogaster) genome, BDGP R5/dm3 (Apr, 2006)',
	'ce10'    => 'Roundworm (Caenorhabditis elegans) genome, WS220/ce10 (Oct, 2010)',
	'TAIR10'  => 'Thale cress (Arabidopsis thaliana) genome, TAIR10 (Nov, 2010)',
	'rice'    => 'Rice (Oryza sativa) genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)',
	'sorBic'  => 'Sorghum (Sorghum bicolor) genome, Sorghum bicolor v2.1 (May, 2013)',
	'bmor1'   => 'Silkworm (Bombyx mori) genome, Bmor1 (Apr, 2008)',
	'sacCer3' => 'Budding yeast (Saccharomyces cerevisiae) (S288C) genome, sacCer3 (Apr, 2011)',
) ;
#- ▲ モジュール読み込みと変数の初期化

#- ▼ リクエストからパラメータを取得
push @timer, [Time::HiRes::time(), 'start;'] ;           #===== 実行時間計測 =====

#-- ▽ HTTPリクエストからパラメータを取得
my $q = new CGI ;
my %query ;
foreach ($q->param){ $query{$_} = $q->param($_) }
#-- △ HTTPリクエストからパラメータを取得

#-- ▽ 使用するパラメータ一覧
my $accession = $query{'accession'} ;  # Accession番号: NM_003380, ...

my $userseq   = $query{'userseq'} ;    # 塩基配列: (FASTA形式または塩基配列のみ)

my $upload    = $query{'upload'} ;     # アップロードされたファイル名: test.fasta, ...

my $pam       = $query{'pam'} ;        # PAMの配列: NGG, NAG, ...

my $db = lc(                           # 特異性確認のデータベース: hg19, mm10, ...
	$query{'db'} // 'hg19') ;          # default: hg19 (Human genome)

my $format =                           # 出力フォーマット: html, txt, json
	($query{'format'} and $query{'format'} =~ /^(html|txt|json)$/i) ?
	lc($query{'format'}) : '' ;

my $download =                         # ファイルとしてダウンロードするか: (boolean)
	($query{'download'} and $format =~ /^(txt|json)$/) ?
	$query{'download'} : '' ;
#-- △ 使用するパラメータ一覧

#-- ▽ PAMを正規化、塩基構成文字以外をNに置換
$pam ||= 'NGG' ;
$pam =~ s/\s//g ;
$pam =~ tr/Uu/Tt/ ;
$pam =~ s/[^ATGCURYMKSWHBVD-]/N/gi ;
$pam = uc(substr($pam . 'NNN', 0, 3)) ;  # 先頭3文字、満たなければ最後にNを付加
#-- △ PAMを正規化、塩基構成文字以外をNに置換

#-- ▽ 大文字小文字を正規化
$db =~ s/calJac3/calJac3/i ;
$db =~ s/susScr3/susScr3/i ;
$db =~ s/galGal4/galGal4/i ;
$db =~ s/xenTro3/xenTro3/i ;
$db =~ s/danRer7/danRer7/i ;
$db =~ s/TAIR10/TAIR10/i   ;
$db =~ s/sorBic/sorBic/i   ;
$db =~ s/sacCer3/sacCer3/i ;
#-- △ 大文字小文字を正規化
#- ▲ リクエストからパラメータを取得

#- ▼ パラメータに応じて画面遷移
#-- uploadファイル指定あり：ファイルを読み込みuserseqにセット
if ($upload){
	my $uploaddata ;
	while(read($upload, my $buffer, 2048)){
		$uploaddata .= $buffer ;
	}

	# データがASCII文字以外を含まないかチェック
	$uploaddata =~ /^[\x20-\x7E\s]+$/ or
		$uploaddata = "\n> Uploaded file is not a plain text or FASTA format.\n" ;

	# ファイルサイズのチェック
	length $uploaddata > $maxfilesize and
		$uploaddata = "\n> Uploaded file is too large.\n" ;

	# 改行コードをLFに統一
	$uploaddata =~ s/\r\n/\n/g ;  # CRLF -> LF
	$uploaddata =~ tr/\r/\n/ ;    # CR   -> LF

	$userseq = $uploaddata ;
}

#-- userseqなしでformat=txt：FASTAを取得してテキスト出力
if (not defined $userseq and $format eq 'txt'){
	#--- ▽ Accession番号からFASTAを取得
	my $fasta = (not $accession) ?
	            	$sampleseq :
	            (eval 'require GetSequence ; 1') ?
	            	$accession =~ /:.*:/ ?
	            		GetSequence::getgenomefasta($accession)  || $sampleseq :
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
	my $result = CRISPRdirect::crispr_design($userseq, $db, $pam) ;
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
			SEQMAP => tsv2seqmap($userseq, $result),
			RESULT => $result
		) ;
		print_html($accession, $userseq, $pam, $db, $template->output) ;
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
sub tsv2table {  # HTMLの表
my $result = $_[0] // '' ;

my $exec_time = ($result =~ /^# \[.*\|\s*(.*?)\s*\]$/m)      ? $1 : '' ;
my $seq_name  = ($result =~ /^# sequence_name:\t(.*)$/m)     ? $1 : '' ;
my $pam_seq   = ($result =~ /^# pam_sequence:\t(.*)$/m)      ? $1 : '' ;
my $db_name   = ($result =~ /^# specificity_check:\t(.*)$/m) ? $1 : '' ;
my $error     = ($result =~ /^# ERROR:\t(.*)$/m)             ? $1 : '' ;

my @result = split /\n/, $result ;
@result = grep(!/^#/, @result) or $error ||= 'No candidates were found.' ;

$error and
	return
		"<p>"                                         . "\n" .
		"	<b>Sequence name:</b> $seq_name<br>"      . "\n" .
		"	<b>PAM sequence:</b> $pam_seq<br>"        . "\n" .
		"	<b>Specificity check:</b> $db_name<br>"   . "\n" .
		"	<b>Time:</b> $exec_time"                  . "\n" .
		"</p>"                                        . "\n" .
		                                                "\n" .
		"<b style='font-size:12pt; color:#800000'>"   . "\n" .
		"	$error"                                   . "\n" .
		"</b>" ;

my @table ;
my $ggg = 'detail/en' ;  # GGGenome URI
foreach (@result){
	my ($start, $end, $strand, $sequence, $gc, $tm, $tttt, $count23, $count15, $count11) = split /\t/ ;

	my $target = ($strand eq '+') ?
		substr($sequence, 0, 20) . '<span class=pam>' . substr($sequence, -3) . '</span>' :
		'<span class=pam>' . substr($sequence, 0, 3) . '</span>' . substr($sequence, -20) ;

	my $seq15  = ($strand eq '+') ? substr($sequence, -15)   :
	                                substr($sequence, 0, 15) ;

	my $seq11  = ($strand eq '+') ? substr($sequence, -11)   :
	                                substr($sequence, 0, 11) ;

	$tttt = $tttt ? '+' : '-' ;

	push @table,
		"<tr>" . "\n" .
		"	<td class=v>$start - $end"                            . "\n" .
		"	<td class=v>$strand"                                  . "\n" .		
		"	<td class=v><span class=mono>$target</span>"          . "\n" .
		"	<td class=o>$gc %"                                    . "\n" .
		"	<td class=o>$tm &deg;C"                               . "\n" .
		"	<td class=o>$tttt"                                    . "\n" .
		"	<td class='g hits'>$count23"                          . "\n" .
		"		<a target='_blank' class=detail"                  . "\n" .
		"			href='$ggg/$db/$sequence'>[detail]</a>"       . "\n" .
		"	<td class='g hits'>$count15"                          . "\n" .
		"		<a target='_blank' class=detail"                  . "\n" .
		"			href='$ggg/$db/$seq15'>[detail]</a>"          . "\n" .
		"	<td class='g hits'>$count11"                          . "\n" .
		"		<a target='_blank' class=detail"                  . "\n" .
		"			href='$ggg/$db/$seq11'>[detail]</a>"          . "\n" .
		"</tr>" . "\n" ;
}

return
	"<p>"                                           . "\n" .
	"	<b>Sequence name:</b> $seq_name<br>"        . "\n" .
	"	<b>PAM sequence:</b> $pam_seq<br>"          . "\n" .
	"	<b>Specificity check:</b> $db_name<br>"     . "\n" .
	"	<b>Time:</b> $exec_time"                    . "\n" .
	"</p>"                                          . "\n" .
	                                                  "\n" .
	#- ▼ DataTablesが有効の場合のみ表示する情報
	"<script type='text/javascript'>"                                                . "\n" .
	"<!--"                                                                           . "\n" .
	"if (\$('#result').show()){"                                                     . "\n" .
	"	document.write("                                                             . "\n" .
	"		'<ul>'                                                                +" . "\n" .
	"		'	<li>Highlighted target positions (<i>e.g.<\\/i>,'                 +" . "\n" .
	"		'	    <em>45 - 67<\\/em>) indicate sequences that are highly'       +" . "\n" .
	"		'	    specific and have fewer off-target hits.'                     +" . "\n" .
	"		'	<li>Target sequences with &apos;0&apos; in &apos;20mer+PAM&apos;' +" . "\n" .
	"		'	    (in number of target sites column) are shown in gray.<br>'    +" . "\n" .
	"		'	    Such sequences may possibly span over exon-exon junctions,'   +" . "\n" .
	"		'	    so avoid using these.'                                        +" . "\n" .
	"		'	<li>Target sequences with TTTTs are also shown in gray.'          +" . "\n" .
	"		'	    Avoid TTTTs in gRNA vectors with pol III promoter.'           +" . "\n" .
	"		'<\\/ul>'                                                             +" . "\n" .
	"		'<label><input type=checkbox id=filter_highlight></label>'            +" . "\n" .
	"		'show <em>highly specific<\\/em> target only'                         +" . "\n" .
	"		'<\\/p>'"                                                                . "\n" .
	"	) ;"                                                                         . "\n" .
	"}"                                                                              . "\n" .
	"//-->"                                                                          . "\n" .
	"</script>"                                                                      . "\n" .
	#- ▲ DataTablesが有効の場合のみ表示する情報
	                                                     "\n" .
	"<table cellspacing=0 cellpadding=2 id=result>"    . "\n" .
	"<thead>"                                          . "\n" .
	"<tr>"                                             . "\n" .
	"	<th class=v colspan=2>position"                . "\n" .
	"	<th class=v colspan=1>target sequence"         . "\n" .
	"	<th class=o colspan=3>sequence information"    . "\n" .
	"	<th class=g colspan=3>number of target sites " . "\n" .
	"		<a href='doc/off-target.html'"                                          . "\n" .
	"			onclick=\"window.open("                                             . "\n" .
	"				'doc/off-target.html','','width=600,height=700,scrollbars=yes'" . "\n" .
	"			) ; return false ;\">"                                              . "\n" .
	"		<img src='qicon.png' alt='?' width=15 height=15 border=0>"              . "\n" .
	"		</a>"                                                                   . "\n" .
	"</tr>"                                            . "\n" .
	"<tr>"                                             . "\n" .
	"	<th class=v>start<br>- end"                    . "\n" .
	"	<th class=v>+<br>&minus;"                      . "\n" .
	"	<th class=v>20mer+"                            .
			"<span class=pam>PAM</span> "              .
			"(total 23mer)"                            . "\n" .
	"	<th class=o>GC% of<br>20mer"                   . "\n" .
	"	<th class=o>Tm of<br>20mer"                    . "\n" .
	"	<th class=o>TTTT in<br>20mer"                  . "\n" .
	"	<th class=g>20mer<br>+PAM"                     . "\n" .
	"	<th class=g>12mer<br>+PAM"                     . "\n" .
	"	<th class=g>8mer<br>+PAM"                      . "\n" .
	"</tr>"                                            . "\n" .
	"</thead>"                                         . "\n" .
	"<tbody>"                                          . "\n" .
	"@{[ join '', @table ]}"                           .
	"</tbody>"                                         . "\n" .
	"</table>" ;
} ;
# ====================
sub tsv2seqmap {  # HTMLのGraphical View
my $fasta  = $_[0] // '' ;
my $result = $_[1] // '' ;

# 既に require CRISPRdirect しているのでここでは省略
# eval 'require CRISPRdirect ; 1' or
# 	print_error('ERROR : cannot load CRISPRdirect') ;

my $error = ($result =~ /^# ERROR:\t(.*)$/m) ? $1 : '' ;

$error and
	return
		"<b style='font-size:12pt; color:#800000'>"   . "\n" .
		"	$error"                                   . "\n" .
		"</b>" ;

my $seq = CRISPRdirect::rna2dna(
	          CRISPRdirect::flatsequence(
		          (CRISPRdirect::readFASTA($fasta))[1]
	          )
          ) ;

my $markfwd = ' ' x length $seq ;
my $markrev = ' ' x length $seq ;

my @result = split /\n/, $result ;
@result = grep(!/^#/, @result) ;

foreach (@result){
	my ($start, $end, $strand, $sequence, $gc, $tm, $tttt, $count23, $count15, $count11) = split /\t/ ;
	($strand eq '+') and ($start <= length $markfwd) and substr($markfwd, $start - 1, 1) =
		($count23 == 1 and $count15 == 1 and $tttt == 0 ) ? '=' :
		($count23 == 0 or $tttt == 1                    ) ? '-' :
		                                                    '>' ;
	($strand eq '-') and ($end <= length $markrev) and substr($markrev, $end - 1, 1) =
		($count23 == 1 and $count15 == 1 and $tttt == 0 ) ? '=' :
		($count23 == 0 or $tttt == 1                    ) ? '-' :
		                                                    '<' ;
}

$" = '' ;
my $html = '' ;
my @poslist ;
my @seqlist ;
my @markfwd ;
my @markrev ;
foreach (1..length($seq)){
	my $base = substr($seq, $_ - 1, 1) ;
	push @seqlist, "<td>$base</td>" ;
	my $mk_f = substr($markfwd, $_ - 1, 1) ;
	push @markfwd,
		($mk_f eq ' ') ? '<td>&nbsp;</td>'       :
		($mk_f eq '>') ? '<td>&gt;</td>'         :
		($mk_f eq '=') ? '<td class=h>&gt;</td>' :
		($mk_f eq '-') ? '<td class=s>&gt;</td>' :
		() ;
	my $mk_r = substr($markrev, $_ - 1, 1) ;
	push @markrev,
		($mk_r eq ' ') ? '<td>&nbsp;</td>'       :
		($mk_r eq '<') ? '<td>&lt;</td>'         :
		($mk_r eq '=') ? '<td class=h>&lt;</td>' :
		($mk_r eq '-') ? '<td class=s>&lt;</td>' :
		() ;
	unless ($_ % 10){
		push @poslist, "<td colspan=10>$_</td>" ;
	}
	unless ($_ % 100){
		$html .= "<tr class=pos>@poslist</tr>\n"  .
		         "<tr class=seq>@seqlist</tr>\n"  .
		         "<tr class=mark>@markfwd</tr>\n" .
		         "<tr class=mark>@markrev</tr>\n" ;
		@poslist = () ;
		@seqlist = () ;
		@markfwd = () ;
		@markrev = () ;
	}
}
if (@seqlist){
	push @poslist, "<td>&nbsp;</td>" ;
	$html .= "<tr class=pos>@poslist</tr>\n"  .
	         "<tr class=seq>@seqlist</tr>\n"  .
	         "<tr class=mark>@markfwd</tr>\n" .
	         "<tr class=mark>@markrev</tr>\n" ;
}

return "<table cellpadding=0 cellspacing=0 id=seqmap>
$html</table>" ;
} ;
# ====================
sub print_html {  # HTMLを出力
my $accession = $_[0] // ''     ;
my $userseq   = $_[1]           ;
my $pam       = $_[2] // 'NGG'  ;
my $db        = $_[3] // 'hg19' ;  # default: hg19 (Human genome)
my $result    = $_[4] // ''     ;

$sampleseq ||= '' ;  # undefを回避

#- ▼ Accession番号からFASTAを取得
not defined $userseq and
$userseq = (not $accession) ?
           	$sampleseq :
           (eval 'require GetSequence ; 1') ?
           	($accession =~ /:.*:/) ?
           		GetSequence::getgenomefasta($accession)  || $sampleseq :
           		GetSequence::accession2fasta($accession) || $sampleseq :
           		print_error('ERROR : cannot load GetSequence') ;
#- ▲ Accession番号からFASTAを取得

#- ▼ プルダウンメニュー
my $select =
"		<option value=none   >none</option>
		<option value=hg19   >$db_fullname{'hg19'   }</option>
		<option value=mm10   >$db_fullname{'mm10'   }</option>
		<option value=rn5    >$db_fullname{'rn5'    }</option>
		<option value=calJac3>$db_fullname{'calJac3'}</option>
		<option value=susScr3>$db_fullname{'susScr3'}</option>
		<option value=galGal4>$db_fullname{'galGal4'}</option>
		<option value=xenTro3>$db_fullname{'xenTro3'}</option>
		<option value=danRer7>$db_fullname{'danRer7'}</option>
		<option value=ci2    >$db_fullname{'ci2'    }</option>
		<option value=dm3    >$db_fullname{'dm3'    }</option>
		<option value=ce10   >$db_fullname{'ce10'   }</option>
		<option value=TAIR10 >$db_fullname{'TAIR10' }</option>
		<option value=rice   >$db_fullname{'rice'   }</option>
		<option value=sorBic >$db_fullname{'sorBic' }</option>
		<option value=bmor1  >$db_fullname{'bmor1'  }</option>
		<option value=sacCer3>$db_fullname{'sacCer3'}</option>" ;
$db and $select =~ s/(?<=option value=$db)/ selected/i ;  # 生物種を選択
#- ▲ プルダウンメニュー

#- ▼ HTML出力
my $template = HTML::Template->new(filename => 'index.tmpl') ;

$template->param(
	ACCESSION => $accession,
	USERSEQ   => $userseq,
	PAM       => $pam,
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
my $pam_seq   = ($result =~ /^# pam_sequence:\t(.*)$/m)      ? $1 : '' ;
my $db_name   = ($result =~ /^# specificity_check:\t(.*)$/m) ? $1 : '' ;
my $error     = ($result =~ /^# ERROR:\t(.*)$/m)             ? $1 : '' ;

my @result = split /\n/, $result ;
@result = grep(!/^#/, @result) ;

my @json ;
foreach (@result){
	my ($start, $end, $strand, $sequence, $gc, $tm, $tttt, $count23, $count15, $count11) = split /\t/ ;
	push @json, {
		start     => $start,
		end       => $end,
		strand    => $strand,
		sequence  => $sequence,
		gc        => $gc,
		tm        => $tm,
		tttt      => $tttt,
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
	pam_sequence      => $pam_seq,
	specificity_check => $db_name,
	error             => $error,
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
