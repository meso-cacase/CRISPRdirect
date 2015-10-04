#!/usr/bin/perl

# CRISPRdirect: CRISPR/Casシステムのターゲット配列設計サーバ
#
# 必要なモジュール:
# HTML::Template
# JSON::XS
# LWP::Simple (GetSequence.pm内で使用)
# ./DBlist.pm (by Yuki Naito)
#
# 2013-04-18 Yuki Naito (@meso_cacase) 実装開始

#- ▼ モジュール読み込みと変数の初期化
use warnings ; no warnings qw(once) ;
use strict ;
use Time::HiRes ;
use CGI ;

eval 'use HTML::Template ; 1' or  # HTMLをテンプレート化
	print_error('ERROR : cannot load HTML::Template') ;

eval 'use DBlist ; 1' or          # データベースの正式名およびホスト名/ポート番号の一覧
	print_error('ERROR : cannot load DBlist') ;

my @timer ;                       # 実行時間計測用
my $timestamp = timestamp() ;     # CGIを実行した時刻

my $maxfilesize = 20 * 1024 ;     # アップロードできるファイル容量の上限

my $sampleseq =                   # トップページで表示するサンプル配列
'>sample sequence
atgccgcgcgtcgtgcccgaccagagaagcaagttcgagaacgaggagttttttaggaag
ctgagccgcgagtgtgagattaagtacacgggcttcagggaccggccccacgaggaacgc
caggcacgcttccagaacgcctgccgcgacggccgctcggaaatcgcttttgtggccaca
ggaaccaatctgtctctccagttttttccggccagctggcagggagaacagcgacaaaca
cctagccgagagtatgtcgacttagaaagagaagcaggcaaggtatatttgaaggctccc
atgattctgaatggagtctgtgttatctggaaaggctggattgatctccaaagactggat
ggtatgggctgtctggagtttgatgaggagcgagcccagcaggaggatgcattagcacaa
caggcctttgaagaggctcggagaaggacacgcgaatttgaagatagagacaggtctcat
cgggaggaaatggaggcaagaagacaacaagaccctagtcctggttccaatttaggtggt
ggtgatgacctcaaacttcgttaa
' ;

my $dbconf = $DBlist::dbconfig ;  # データベースの正式名およびホスト名/ポート番号のリスト

my %db_fullname ;                 # データベースの正式名
my %db_synonym ;	#ADD tyamamot
foreach (split /\n/, $dbconf){
	chomp ;
	map {defined $_ ? ($_ =~ s/\s*$//g) : ($_ = '')}  # 後方のスペースを除去
		my ($db, undef, undef, undef, undef, $fullname, $synonym) = split /\t/ ; #CHANGE tyamamot
	$db_fullname{$db} = $fullname ;
	$db_synonym{$db}  = $synonym ;	#ADD tyamamot
}
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

#-- ▽ DBの大文字小文字を正規化
grep {$db =~ s/^$_$/$_/i} keys(%db_fullname) ;
#-- △ DBの大文字小文字を正規化
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

	my $target2 = ($strand eq '+') ? $sequence : CRISPRdirect::comp($sequence) ;

	my $seq23  = ($strand eq '+') ? substr($sequence, -23, -3) . $pam :
	                                CRISPRdirect::comp($pam) . substr($sequence, 3, 23-3) ;

	my $seq15  = ($strand eq '+') ? substr($sequence, -15, -3) . $pam :
	                                CRISPRdirect::comp($pam) . substr($sequence, 3, 15-3) ;

	my $seq11  = ($strand eq '+') ? substr($sequence, -11, -3) . $pam :
	                                CRISPRdirect::comp($pam) . substr($sequence, 3, 11-3) ;

	$tttt = $tttt ? '+' : '-' ;

	push @table,
		"<tr>" . "\n" .
		"	<td class=v>$start - $end"                            . "\n" .
		"	<td class=v>$strand"                                  . "\n" .		
		"	<td class=v><span class=mono>$target</span>"          . "\n" .
		"		<a target='_blank' class=detail"                  . "\n" .
		"			href='gRNAcalc/?seq=$target2'>[gRNA]</a>"     . "\n" .
		"	<td class=o>$gc %"                                    . "\n" .
		"	<td class=o>$tm &deg;C"                               . "\n" .
		"	<td class=o>$tttt"                                    . "\n" .
		"	<td class='g hits'>$count23"                          . "\n" .
		"		<a target='_blank' class=detail"                  . "\n" .
		"			href='$ggg/$db/$seq23'>[detail]</a>"          . "\n" .
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
	"		'	<li>Highlighted target positions (e.g.,'                          +" . "\n" .
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
#ADD tyamamot synonym属性の追記
my $select = <<"--EOS--" ;
		<option value=\'none\'    synonym=\"\"                      >none</option>
		<option disabled>----------</option>
		<option value=\'hg19\'    synonym=\"$db_synonym{'hg19'   }\">$db_fullname{'hg19'   }</option>
		<option value=\'mm10\'    synonym=\"$db_synonym{'mm10'   }\">$db_fullname{'mm10'   }</option>
		<option value=\'rn5\'     synonym=\"$db_synonym{'rn5'    }\">$db_fullname{'rn5'    }</option>
		<option value=\'calJac3\' synonym=\"$db_synonym{'calJac3'}\">$db_fullname{'calJac3'}</option>
		<option value=\'susScr3\' synonym=\"$db_synonym{'susScr3'}\">$db_fullname{'susScr3'}</option>
		<option value=\'galGal4\' synonym=\"$db_synonym{'galGal4'}\">$db_fullname{'galGal4'}</option>
		<option value=\'xenTro3\' synonym=\"$db_synonym{'xenTro3'}\">$db_fullname{'xenTro3'}</option>
		<option value=\'Xenla7\'  synonym=\"$db_synonym{'Xenla7' }\">$db_fullname{'Xenla7' }</option>
		<option value=\'danRer7\' synonym=\"$db_synonym{'danRer7'}\">$db_fullname{'danRer7'}</option>
		<option value=\'ci2\'     synonym=\"$db_synonym{'ci2'    }\">$db_fullname{'ci2'    }</option>
		<option value=\'dm3\'     synonym=\"$db_synonym{'dm3'    }\">$db_fullname{'dm3'    }</option>
		<option value=\'ce10\'    synonym=\"$db_synonym{'ce10'   }\">$db_fullname{'ce10'   }</option>
		<option value=\'TAIR10\'  synonym=\"$db_synonym{'TAIR10' }\">$db_fullname{'TAIR10' }</option>
		<option value=\'rice\'    synonym=\"$db_synonym{'rice'   }\">$db_fullname{'rice'   }</option>
		<option value=\'sorBic\'  synonym=\"$db_synonym{'sorBic' }\">$db_fullname{'sorBic' }</option>
		<option value=\'bmor1\'   synonym=\"$db_synonym{'bmor1'  }\">$db_fullname{'bmor1'  }</option>
		<option value=\'sacCer3\' synonym=\"$db_synonym{'sacCer3'}\">$db_fullname{'sacCer3'}</option>
		<option value=\'pombe\'   synonym=\"$db_synonym{'pombe'  }\">$db_fullname{'pombe'  }</option>
		<option disabled>----------</option>
		<option value=\'hg38\'            synonym=\"$db_synonym{'hg38'           }\">$db_fullname{'hg38'           }</option>
		<option value=\'hg19\'            synonym=\"$db_synonym{'hg19'           }\">$db_fullname{'hg19'           }</option>
		<option value=\'hg18\'            synonym=\"$db_synonym{'hg18'           }\">$db_fullname{'hg18'           }</option>
		<option value=\'mm10\'            synonym=\"$db_synonym{'mm10'           }\">$db_fullname{'mm10'           }</option>
		<option value=\'mm9\'             synonym=\"$db_synonym{'mm9'            }\">$db_fullname{'mm9'            }</option>
		<option value=\'rn6\'             synonym=\"$db_synonym{'rn6'            }\">$db_fullname{'rn6'            }</option>
		<option value=\'rn5\'             synonym=\"$db_synonym{'rn5'            }\">$db_fullname{'rn5'            }</option>
		<option value=\'vicPac2\'         synonym=\"$db_synonym{'vicPac2'        }\">$db_fullname{'vicPac2'        }</option>
		<option value=\'dasNov3\'         synonym=\"$db_synonym{'dasNov3'        }\">$db_fullname{'dasNov3'        }</option>
		<option value=\'papAnu2\'         synonym=\"$db_synonym{'papAnu2'        }\">$db_fullname{'papAnu2'        }</option>
		<option value=\'otoGar3\'         synonym=\"$db_synonym{'otoGar3'        }\">$db_fullname{'otoGar3'        }</option>
		<option value=\'felCat5\'         synonym=\"$db_synonym{'felCat5'        }\">$db_fullname{'felCat5'        }</option>
		<option value=\'panTro4\'         synonym=\"$db_synonym{'panTro4'        }\">$db_fullname{'panTro4'        }</option>
		<option value=\'criGri1\'         synonym=\"$db_synonym{'criGri1'        }\">$db_fullname{'criGri1'        }</option>
		<option value=\'bosTau8\'         synonym=\"$db_synonym{'bosTau8'        }\">$db_fullname{'bosTau8'        }</option>
		<option value=\'canFam3\'         synonym=\"$db_synonym{'canFam3'        }\">$db_fullname{'canFam3'        }</option>
		<option value=\'turTru2\'         synonym=\"$db_synonym{'turTru2'        }\">$db_fullname{'turTru2'        }</option>
		<option value=\'loxAfr3\'         synonym=\"$db_synonym{'loxAfr3'        }\">$db_fullname{'loxAfr3'        }</option>
		<option value=\'musFur1\'         synonym=\"$db_synonym{'musFur1'        }\">$db_fullname{'musFur1'        }</option>
		<option value=\'nomLeu3\'         synonym=\"$db_synonym{'nomLeu3'        }\">$db_fullname{'nomLeu3'        }</option>
		<option value=\'gorGor3\'         synonym=\"$db_synonym{'gorGor3'        }\">$db_fullname{'gorGor3'        }</option>
		<option value=\'cavPor3\'         synonym=\"$db_synonym{'cavPor3'        }\">$db_fullname{'cavPor3'        }</option>
		<option value=\'eriEur2\'         synonym=\"$db_synonym{'eriEur2'        }\">$db_fullname{'eriEur2'        }</option>
		<option value=\'equCab2\'         synonym=\"$db_synonym{'equCab2'        }\">$db_fullname{'equCab2'        }</option>
		<option value=\'dipOrd1\'         synonym=\"$db_synonym{'dipOrd1'        }\">$db_fullname{'dipOrd1'        }</option>
		<option value=\'triMan1\'         synonym=\"$db_synonym{'triMan1'        }\">$db_fullname{'triMan1'        }</option>
		<option value=\'calJac3\'         synonym=\"$db_synonym{'calJac3'        }\">$db_fullname{'calJac3'        }</option>
		<option value=\'pteVam1\'         synonym=\"$db_synonym{'pteVam1'        }\">$db_fullname{'pteVam1'        }</option>
		<option value=\'myoLuc2\'         synonym=\"$db_synonym{'myoLuc2'        }\">$db_fullname{'myoLuc2'        }</option>
		<option value=\'balAcu1\'         synonym=\"$db_synonym{'balAcu1'        }\">$db_fullname{'balAcu1'        }</option>
		<option value=\'micMur1\'         synonym=\"$db_synonym{'micMur1'        }\">$db_fullname{'micMur1'        }</option>
		<option value=\'hetGla2\'         synonym=\"$db_synonym{'hetGla2'        }\">$db_fullname{'hetGla2'        }</option>
		<option value=\'monDom5\'         synonym=\"$db_synonym{'monDom5'        }\">$db_fullname{'monDom5'        }</option>
		<option value=\'ponAbe2\'         synonym=\"$db_synonym{'ponAbe2'        }\">$db_fullname{'ponAbe2'        }</option>
		<option value=\'ailMel1\'         synonym=\"$db_synonym{'ailMel1'        }\">$db_fullname{'ailMel1'        }</option>
		<option value=\'susScr3\'         synonym=\"$db_synonym{'susScr3'        }\">$db_fullname{'susScr3'        }</option>
		<option value=\'ochPri3\'         synonym=\"$db_synonym{'ochPri3'        }\">$db_fullname{'ochPri3'        }</option>
		<option value=\'ornAna1\'         synonym=\"$db_synonym{'ornAna1'        }\">$db_fullname{'ornAna1'        }</option>
		<option value=\'oryCun2\'         synonym=\"$db_synonym{'oryCun2'        }\">$db_fullname{'oryCun2'        }</option>
		<option value=\'rheMac3\'         synonym=\"$db_synonym{'rheMac3'        }\">$db_fullname{'rheMac3'        }</option>
		<option value=\'proCap1\'         synonym=\"$db_synonym{'proCap1'        }\">$db_fullname{'proCap1'        }</option>
		<option value=\'oviAri3\'         synonym=\"$db_synonym{'oviAri3'        }\">$db_fullname{'oviAri3'        }</option>
		<option value=\'sorAra2\'         synonym=\"$db_synonym{'sorAra2'        }\">$db_fullname{'sorAra2'        }</option>
		<option value=\'choHof1\'         synonym=\"$db_synonym{'choHof1'        }\">$db_fullname{'choHof1'        }</option>
		<option value=\'speTri2\'         synonym=\"$db_synonym{'speTri2'        }\">$db_fullname{'speTri2'        }</option>
		<option value=\'saiBol1\'         synonym=\"$db_synonym{'saiBol1'        }\">$db_fullname{'saiBol1'        }</option>
		<option value=\'tarSyr1\'         synonym=\"$db_synonym{'tarSyr1'        }\">$db_fullname{'tarSyr1'        }</option>
		<option value=\'sarHar1\'         synonym=\"$db_synonym{'sarHar1'        }\">$db_fullname{'sarHar1'        }</option>
		<option value=\'echTel2\'         synonym=\"$db_synonym{'echTel2'        }\">$db_fullname{'echTel2'        }</option>
		<option value=\'tupBel1\'         synonym=\"$db_synonym{'tupBel1'        }\">$db_fullname{'tupBel1'        }</option>
		<option value=\'macEug2\'         synonym=\"$db_synonym{'macEug2'        }\">$db_fullname{'macEug2'        }</option>
		<option value=\'cerSim1\'         synonym=\"$db_synonym{'cerSim1'        }\">$db_fullname{'cerSim1'        }</option>
		<option value=\'allMis1\'         synonym=\"$db_synonym{'allMis1'        }\">$db_fullname{'allMis1'        }</option>
		<option value=\'gadMor1\'         synonym=\"$db_synonym{'gadMor1'        }\">$db_fullname{'gadMor1'        }</option>
		<option value=\'melUnd1\'         synonym=\"$db_synonym{'melUnd1'        }\">$db_fullname{'melUnd1'        }</option>
		<option value=\'galGal4\'         synonym=\"$db_synonym{'galGal4'        }\">$db_fullname{'galGal4'        }</option>
		<option value=\'latCha1\'         synonym=\"$db_synonym{'latCha1'        }\">$db_fullname{'latCha1'        }</option>
		<option value=\'calMil1\'         synonym=\"$db_synonym{'calMil1'        }\">$db_fullname{'calMil1'        }</option>
		<option value=\'fr3\'             synonym=\"$db_synonym{'fr3'            }\">$db_fullname{'fr3'            }</option>
		<option value=\'petMar2\'         synonym=\"$db_synonym{'petMar2'        }\">$db_fullname{'petMar2'        }</option>
		<option value=\'anoCar2\'         synonym=\"$db_synonym{'anoCar2'        }\">$db_fullname{'anoCar2'        }</option>
		<option value=\'oryLat2\'         synonym=\"$db_synonym{'oryLat2'        }\">$db_fullname{'oryLat2'        }</option>
		<option value=\'geoFor1\'         synonym=\"$db_synonym{'geoFor1'        }\">$db_fullname{'geoFor1'        }</option>
		<option value=\'oreNil2\'         synonym=\"$db_synonym{'oreNil2'        }\">$db_fullname{'oreNil2'        }</option>
		<option value=\'chrPic1\'         synonym=\"$db_synonym{'chrPic1'        }\">$db_fullname{'chrPic1'        }</option>
		<option value=\'gasAcu1\'         synonym=\"$db_synonym{'gasAcu1'        }\">$db_fullname{'gasAcu1'        }</option>
		<option value=\'tetNig2\'         synonym=\"$db_synonym{'tetNig2'        }\">$db_fullname{'tetNig2'        }</option>
		<option value=\'melGal1\'         synonym=\"$db_synonym{'melGal1'        }\">$db_fullname{'melGal1'        }</option>
		<option value=\'xenTro3\'         synonym=\"$db_synonym{'xenTro3'        }\">$db_fullname{'xenTro3'        }</option>
		<option value=\'taeGut2\'         synonym=\"$db_synonym{'taeGut2'        }\">$db_fullname{'taeGut2'        }</option>
		<option value=\'danRer7\'         synonym=\"$db_synonym{'danRer7'        }\">$db_fullname{'danRer7'        }</option>
		<option value=\'ci2\'             synonym=\"$db_synonym{'ci2'            }\">$db_fullname{'ci2'            }</option>
		<option value=\'braFlo1\'         synonym=\"$db_synonym{'braFlo1'        }\">$db_fullname{'braFlo1'        }</option>
		<option value=\'strPur2\'         synonym=\"$db_synonym{'strPur2'        }\">$db_fullname{'strPur2'        }</option>
		<option value=\'anoGam1\'         synonym=\"$db_synonym{'anoGam1'        }\">$db_fullname{'anoGam1'        }</option>
		<option value=\'apiMel2\'         synonym=\"$db_synonym{'apiMel2'        }\">$db_fullname{'apiMel2'        }</option>
		<option value=\'droAna2\'         synonym=\"$db_synonym{'droAna2'        }\">$db_fullname{'droAna2'        }</option>
		<option value=\'droEre1\'         synonym=\"$db_synonym{'droEre1'        }\">$db_fullname{'droEre1'        }</option>
		<option value=\'droGri1\'         synonym=\"$db_synonym{'droGri1'        }\">$db_fullname{'droGri1'        }</option>
		<option value=\'dm6\'             synonym=\"$db_synonym{'dm6'            }\">$db_fullname{'dm6'            }</option>
		<option value=\'dm3\'             synonym=\"$db_synonym{'dm3'            }\">$db_fullname{'dm3'            }</option>
		<option value=\'droMoj2\'         synonym=\"$db_synonym{'droMoj2'        }\">$db_fullname{'droMoj2'        }</option>
		<option value=\'droPer1\'         synonym=\"$db_synonym{'droPer1'        }\">$db_fullname{'droPer1'        }</option>
		<option value=\'dp3\'             synonym=\"$db_synonym{'dp3'            }\">$db_fullname{'dp3'            }</option>
		<option value=\'droSec1\'         synonym=\"$db_synonym{'droSec1'        }\">$db_fullname{'droSec1'        }</option>
		<option value=\'droSim1\'         synonym=\"$db_synonym{'droSim1'        }\">$db_fullname{'droSim1'        }</option>
		<option value=\'droVir2\'         synonym=\"$db_synonym{'droVir2'        }\">$db_fullname{'droVir2'        }</option>
		<option value=\'droYak2\'         synonym=\"$db_synonym{'droYak2'        }\">$db_fullname{'droYak2'        }</option>
		<option value=\'caePb2\'          synonym=\"$db_synonym{'caePb2'         }\">$db_fullname{'caePb2'         }</option>
		<option value=\'cb3\'             synonym=\"$db_synonym{'cb3'            }\">$db_fullname{'cb3'            }</option>
		<option value=\'ce10\'            synonym=\"$db_synonym{'ce10'           }\">$db_fullname{'ce10'           }</option>
		<option value=\'caeJap1\'         synonym=\"$db_synonym{'caeJap1'        }\">$db_fullname{'caeJap1'        }</option>
		<option value=\'caeRem3\'         synonym=\"$db_synonym{'caeRem3'        }\">$db_fullname{'caeRem3'        }</option>
		<option value=\'priPac1\'         synonym=\"$db_synonym{'priPac1'        }\">$db_fullname{'priPac1'        }</option>
		<option value=\'sacCer3\'         synonym=\"$db_synonym{'sacCer3'        }\">$db_fullname{'sacCer3'        }</option>
		<option value=\'aplCal1\'         synonym=\"$db_synonym{'aplCal1'        }\">$db_fullname{'aplCal1'        }</option>
		<option value=\'eboVir3\'         synonym=\"$db_synonym{'eboVir3'        }\">$db_fullname{'eboVir3'        }</option>
		<option value=\'OryAfe1.0\'       synonym=\"$db_synonym{'OryAfe1.0'      }\">$db_fullname{'OryAfe1.0'      }</option>
		<option value=\'PoeFor_5.1.2\'    synonym=\"$db_synonym{'PoeFor_5.1.2'   }\">$db_fullname{'PoeFor_5.1.2'   }</option>
		<option value=\'CSAV2.0\'         synonym=\"$db_synonym{'CSAV2.0'        }\">$db_fullname{'CSAV2.0'        }</option>
		<option value=\'AstMex102\'       synonym=\"$db_synonym{'AstMex102'      }\">$db_fullname{'AstMex102'      }</option>
		<option value=\'PelSin_1.0\'      synonym=\"$db_synonym{'PelSin_1.0'     }\">$db_fullname{'PelSin_1.0'     }</option>
		<option value=\'MacFas5.0\'       synonym=\"$db_synonym{'MacFas5.0'      }\">$db_fullname{'MacFas5.0'      }</option>
		<option value=\'BGI_duck_1.0\'    synonym=\"$db_synonym{'BGI_duck_1.0'   }\">$db_fullname{'BGI_duck_1.0'   }</option>
		<option value=\'FicAlb_1.4\'      synonym=\"$db_synonym{'FicAlb_1.4'     }\">$db_fullname{'FicAlb_1.4'     }</option>
		<option value=\'Pham\'            synonym=\"$db_synonym{'Pham'           }\">$db_fullname{'Pham'           }</option>
		<option value=\'Xipmac4.4.2\'     synonym=\"$db_synonym{'Xipmac4.4.2'    }\">$db_fullname{'Xipmac4.4.2'    }</option>
		<option value=\'MicOch1.0\'       synonym=\"$db_synonym{'MicOch1.0'      }\">$db_fullname{'MicOch1.0'      }</option>
		<option value=\'PhyMac_2.0.2\'    synonym=\"$db_synonym{'PhyMac_2.0.2'   }\">$db_fullname{'PhyMac_2.0.2'   }</option>
		<option value=\'LepOcu1\'         synonym=\"$db_synonym{'LepOcu1'        }\">$db_fullname{'LepOcu1'        }</option>
		<option value=\'ChlSab1.1\'       synonym=\"$db_synonym{'ChlSab1.1'      }\">$db_fullname{'ChlSab1.1'      }</option>
		<option value=\'Acyr_2.0\'        synonym=\"$db_synonym{'Acyr_2.0'       }\">$db_fullname{'Acyr_2.0'       }</option>
		<option value=\'AaegL3\'          synonym=\"$db_synonym{'AaegL3'         }\">$db_fullname{'AaegL3'         }</option>
		<option value=\'Aqu1\'            synonym=\"$db_synonym{'Aqu1'           }\">$db_fullname{'Aqu1'           }</option>
		<option value=\'AdarC3\'          synonym=\"$db_synonym{'AdarC3'         }\">$db_fullname{'AdarC3'         }</option>
		<option value=\'Attacep1.0\'      synonym=\"$db_synonym{'Attacep1.0'     }\">$db_fullname{'Attacep1.0'     }</option>
		<option value=\'ASM15162v1\'      synonym=\"$db_synonym{'ASM15162v1'     }\">$db_fullname{'ASM15162v1'     }</option>
		<option value=\'B_malayi_3.0\'    synonym=\"$db_synonym{'B_malayi_3.0'   }\">$db_fullname{'B_malayi_3.0'   }</option>
		<option value=\'Capte_v1.0\'      synonym=\"$db_synonym{'Capte_v1.0'     }\">$db_fullname{'Capte_v1.0'     }</option>
		<option value=\'oyster_v9\'       synonym=\"$db_synonym{'oyster_v9'      }\">$db_fullname{'oyster_v9'      }</option>
		<option value=\'CpipJ2\'          synonym=\"$db_synonym{'CpipJ2'         }\">$db_fullname{'CpipJ2'         }</option>
		<option value=\'DanPle_1.0\'      synonym=\"$db_synonym{'DanPle_1.0'     }\">$db_fullname{'DanPle_1.0'     }</option>
		<option value=\'Dappu_V1.0\'      synonym=\"$db_synonym{'Dappu_V1.0'     }\">$db_fullname{'Dappu_V1.0'     }</option>
		<option value=\'DendPond_1.0\'    synonym=\"$db_synonym{'DendPond_1.0'   }\">$db_fullname{'DendPond_1.0'   }</option>
		<option value=\'dwil_caf1\'       synonym=\"$db_synonym{'dwil_caf1'      }\">$db_fullname{'dwil_caf1'      }</option>
		<option value=\'Hmel1\'           synonym=\"$db_synonym{'Hmel1'          }\">$db_fullname{'Hmel1'          }</option>
		<option value=\'Helro1\'          synonym=\"$db_synonym{'Helro1'         }\">$db_fullname{'Helro1'         }</option>
		<option value=\'IscaW1\'          synonym=\"$db_synonym{'IscaW1'         }\">$db_fullname{'IscaW1'         }</option>
		<option value=\'Loa_loa_V3\'      synonym=\"$db_synonym{'Loa_loa_V3'     }\">$db_fullname{'Loa_loa_V3'     }</option>
		<option value=\'Lotgi1\'          synonym=\"$db_synonym{'Lotgi1'         }\">$db_fullname{'Lotgi1'         }</option>
		<option value=\'Msca1\'           synonym=\"$db_synonym{'Msca1'          }\">$db_fullname{'Msca1'          }</option>
		<option value=\'MelCinx1.0\'      synonym=\"$db_synonym{'MelCinx1.0'     }\">$db_fullname{'MelCinx1.0'     }</option>
		<option value=\'MneLei\'          synonym=\"$db_synonym{'MneLei'         }\">$db_fullname{'MneLei'         }</option>
		<option value=\'Nvit_2.1\'        synonym=\"$db_synonym{'Nvit_2.1'       }\">$db_fullname{'Nvit_2.1'       }</option>
		<option value=\'ASM20922v1\'      synonym=\"$db_synonym{'ASM20922v1'     }\">$db_fullname{'ASM20922v1'     }</option>
		<option value=\'Cameroon_v3\'     synonym=\"$db_synonym{'Cameroon_v3'    }\">$db_fullname{'Cameroon_v3'    }</option>
		<option value=\'PhumU2\'          synonym=\"$db_synonym{'PhumU2'         }\">$db_fullname{'PhumU2'         }</option>
		<option value=\'RproC1\'          synonym=\"$db_synonym{'RproC1'         }\">$db_fullname{'RproC1'         }</option>
		<option value=\'ASM23792v2\'      synonym=\"$db_synonym{'ASM23792v2'     }\">$db_fullname{'ASM23792v2'     }</option>
		<option value=\'Si_gnG\'          synonym=\"$db_synonym{'Si_gnG'         }\">$db_fullname{'Si_gnG'         }</option>
		<option value=\'Smar1\'           synonym=\"$db_synonym{'Smar1'          }\">$db_fullname{'Smar1'          }</option>
		<option value=\'ASM23943v1\'      synonym=\"$db_synonym{'ASM23943v1'     }\">$db_fullname{'ASM23943v1'     }</option>
		<option value=\'Tcas3\'           synonym=\"$db_synonym{'Tcas3'          }\">$db_fullname{'Tcas3'          }</option>
		<option value=\'Tspiralis1\'      synonym=\"$db_synonym{'Tspiralis1'     }\">$db_fullname{'Tspiralis1'     }</option>
		<option value=\'ASM15027v1\'      synonym=\"$db_synonym{'ASM15027v1'     }\">$db_fullname{'ASM15027v1'     }</option>
		<option value=\'ZooNev1.0\'       synonym=\"$db_synonym{'ZooNev1.0'      }\">$db_fullname{'ZooNev1.0'      }</option>
		<option value=\'ASM34733v1\'      synonym=\"$db_synonym{'ASM34733v1'     }\">$db_fullname{'ASM34733v1'     }</option>
		<option value=\'AMTR1.0\'         synonym=\"$db_synonym{'AMTR1.0'        }\">$db_fullname{'AMTR1.0'        }</option>
		<option value=\'Araly_v.1.0\'     synonym=\"$db_synonym{'Araly_v.1.0'    }\">$db_fullname{'Araly_v.1.0'    }</option>
		<option value=\'TAIR10_en\'       synonym=\"$db_synonym{'TAIR10_en'      }\">$db_fullname{'TAIR10_en'      }</option>
		<option value=\'Bradi_v1.0\'      synonym=\"$db_synonym{'Bradi_v1.0'     }\">$db_fullname{'Bradi_v1.0'     }</option>
		<option value=\'Braol_v2.1\'      synonym=\"$db_synonym{'Braol_v2.1'     }\">$db_fullname{'Braol_v2.1'     }</option>
		<option value=\'IVFCAASv1\'       synonym=\"$db_synonym{'IVFCAASv1'      }\">$db_fullname{'IVFCAASv1'      }</option>
		<option value=\'Chlre_v3.1\'      synonym=\"$db_synonym{'Chlre_v3.1'     }\">$db_fullname{'Chlre_v3.1'     }</option>
		<option value=\'ASM9120v1\'       synonym=\"$db_synonym{'ASM9120v1'      }\">$db_fullname{'ASM9120v1'      }</option>
		<option value=\'Soybn_V1.0\'      synonym=\"$db_synonym{'Soybn_V1.0'     }\">$db_fullname{'Soybn_V1.0'     }</option>
		<option value=\'Horvu_v1\'        synonym=\"$db_synonym{'Horvu_v1'       }\">$db_fullname{'Horvu_v1'       }</option>
		<option value=\'Lperr_V1.4\'      synonym=\"$db_synonym{'Lperr_V1.4'     }\">$db_fullname{'Lperr_V1.4'     }</option>
		<option value=\'MedtrA17_4.0\'    synonym=\"$db_synonym{'MedtrA17_4.0'   }\">$db_fullname{'MedtrA17_4.0'   }</option>
		<option value=\'MA1\'             synonym=\"$db_synonym{'MA1'            }\">$db_fullname{'MA1'            }</option>
		<option value=\'Obart_v1.0\'      synonym=\"$db_synonym{'Obart_v1.0'     }\">$db_fullname{'Obart_v1.0'     }</option>
		<option value=\'Orybr_v1.4b\'     synonym=\"$db_synonym{'Orybr_v1.4b'    }\">$db_fullname{'Orybr_v1.4b'    }</option>
		<option value=\'AGI1.1\'          synonym=\"$db_synonym{'AGI1.1'         }\">$db_fullname{'AGI1.1'         }</option>
		<option value=\'Orygl\'           synonym=\"$db_synonym{'Orygl'          }\">$db_fullname{'Orygl'          }</option>
		<option value=\'Orylo_v0117\'     synonym=\"$db_synonym{'Orylo_v0117'    }\">$db_fullname{'Orylo_v0117'    }</option>
		<option value=\'Oryme_v1.3\'      synonym=\"$db_synonym{'Oryme_v1.3'     }\">$db_fullname{'Oryme_v1.3'     }</option>
		<option value=\'Oryni\'           synonym=\"$db_synonym{'Oryni'          }\">$db_fullname{'Oryni'          }</option>
		<option value=\'Orypu\'           synonym=\"$db_synonym{'Orypu'          }\">$db_fullname{'Orypu'          }</option>
		<option value=\'PRJEB4137\'       synonym=\"$db_synonym{'PRJEB4137'      }\">$db_fullname{'PRJEB4137'      }</option>
		<option value=\'ASM465v1\'        synonym=\"$db_synonym{'ASM465v1'       }\">$db_fullname{'ASM465v1'       }</option>
		<option value=\'ASM9206v1\'       synonym=\"$db_synonym{'ASM9206v1'      }\">$db_fullname{'ASM9206v1'      }</option>
		<option value=\'ASM242v1\'        synonym=\"$db_synonym{'ASM242v1'       }\">$db_fullname{'ASM242v1'       }</option>
		<option value=\'Poptr_JGI2.0\'    synonym=\"$db_synonym{'Poptr_JGI2.0'   }\">$db_fullname{'Poptr_JGI2.0'   }</option>
		<option value=\'Prupe1_0\'        synonym=\"$db_synonym{'Prupe1_0'       }\">$db_fullname{'Prupe1_0'       }</option>
		<option value=\'Selml_v1.0\'      synonym=\"$db_synonym{'Selml_v1.0'     }\">$db_fullname{'Selml_v1.0'     }</option>
		<option value=\'Setit_JGIv2.0\'   synonym=\"$db_synonym{'Setit_JGIv2.0'  }\">$db_fullname{'Setit_JGIv2.0'  }</option>
		<option value=\'SL2.50\'          synonym=\"$db_synonym{'SL2.50'         }\">$db_fullname{'SL2.50'         }</option>
		<option value=\'SolTub_3.0\'      synonym=\"$db_synonym{'SolTub_3.0'     }\">$db_fullname{'SolTub_3.0'     }</option>
		<option value=\'Sorbi1\'          synonym=\"$db_synonym{'Sorbi1'         }\">$db_fullname{'Sorbi1'         }</option>
		<option value=\'Thecc_20110822\'  synonym=\"$db_synonym{'Thecc_20110822' }\">$db_fullname{'Thecc_20110822' }</option>
		<option value=\'IWGSC1.0\'        synonym=\"$db_synonym{'IWGSC1.0'       }\">$db_fullname{'IWGSC1.0'       }</option>
		<option value=\'ASM34745v1\'      synonym=\"$db_synonym{'ASM34745v1'     }\">$db_fullname{'ASM34745v1'     }</option>
		<option value=\'IGGP_12x\'        synonym=\"$db_synonym{'IGGP_12x'       }\">$db_fullname{'IGGP_12x'       }</option>
		<option value=\'AGPv3\'           synonym=\"$db_synonym{'AGPv3'          }\">$db_fullname{'AGPv3'          }</option>
		<option value=\'Ppatens_251_v3\'            synonym=\"$db_synonym{'Ppatens_251_v3'           }\">$db_fullname{'Ppatens_251_v3'           }</option>
		<option value=\'Smoellendorffii_91_v1\'     synonym=\"$db_synonym{'Smoellendorffii_91_v1'    }\">$db_fullname{'Smoellendorffii_91_v1'    }</option>
		<option value=\'Creinhardtii_281_v5_5\'     synonym=\"$db_synonym{'Creinhardtii_281_v5_5'    }\">$db_fullname{'Creinhardtii_281_v5_5'    }</option>
		<option value=\'Olucimarinus_231_v2\'       synonym=\"$db_synonym{'Olucimarinus_231_v2'      }\">$db_fullname{'Olucimarinus_231_v2'      }</option>
		<option value=\'Cgrandiflora_v1\'           synonym=\"$db_synonym{'Cgrandiflora_v1'          }\">$db_fullname{'Cgrandiflora_v1'          }</option>
		<option value=\'Crubella_v1\'               synonym=\"$db_synonym{'Crubella_v1'              }\">$db_fullname{'Crubella_v1'              }</option>
		<option value=\'Cpapaya_r.Dec2008\'         synonym=\"$db_synonym{'Cpapaya_r.Dec2008'        }\">$db_fullname{'Cpapaya_r.Dec2008'        }</option>
		<option value=\'CsubellipsoideaC169_v2.0\'  synonym=\"$db_synonym{'CsubellipsoideaC169_v2.0' }\">$db_fullname{'CsubellipsoideaC169_v2.0' }</option>
		<option value=\'Csativus_v1\'               synonym=\"$db_synonym{'Csativus_v1'              }\">$db_fullname{'Csativus_v1'              }</option>
		<option value=\'Egrandis_v2.0\'             synonym=\"$db_synonym{'Egrandis_v2.0'            }\">$db_fullname{'Egrandis_v2.0'            }</option>
		<option value=\'Fvesca_v1.1\'               synonym=\"$db_synonym{'Fvesca_v1.1'              }\">$db_fullname{'Fvesca_v1.1'              }</option>
		<option value=\'Graimondii_v2.0\'           synonym=\"$db_synonym{'Graimondii_v2.0'          }\">$db_fullname{'Graimondii_v2.0'          }</option>
		<option value=\'Lusitatissimum_BGIv1.0\'    synonym=\"$db_synonym{'Lusitatissimum_BGIv1.0'   }\">$db_fullname{'Lusitatissimum_BGIv1.0'   }</option>
		<option value=\'Mdomestica_v1.0\'           synonym=\"$db_synonym{'Mdomestica_v1.0'          }\">$db_fullname{'Mdomestica_v1.0'          }</option>
		<option value=\'Mesculenta_v6\'             synonym=\"$db_synonym{'Mesculenta_v6'            }\">$db_fullname{'Mesculenta_v6'            }</option>
		<option value=\'MpusillaCCMP1545_v3.0\'     synonym=\"$db_synonym{'MpusillaCCMP1545_v3.0'    }\">$db_fullname{'MpusillaCCMP1545_v3.0'    }</option>
		<option value=\'MpusillaRCC299_v3.0\'       synonym=\"$db_synonym{'MpusillaRCC299_v3.0'      }\">$db_fullname{'MpusillaRCC299_v3.0'      }</option>
		<option value=\'Mguttatus_v2.0\'            synonym=\"$db_synonym{'Mguttatus_v2.0'           }\">$db_fullname{'Mguttatus_v2.0'           }</option>
		<option value=\'Ppersica_v2.0\'             synonym=\"$db_synonym{'Ppersica_v2.0'            }\">$db_fullname{'Ppersica_v2.0'            }</option>
		<option value=\'Rcommunis_TIGR.0.1\'        synonym=\"$db_synonym{'Rcommunis_TIGR.0.1'       }\">$db_fullname{'Rcommunis_TIGR.0.1'       }</option>
		<option value=\'Spolyrhiza_v1\'             synonym=\"$db_synonym{'Spolyrhiza_v1'            }\">$db_fullname{'Spolyrhiza_v1'            }</option>
		<option value=\'Vcarteri_v2\'               synonym=\"$db_synonym{'Vcarteri_v2'              }\">$db_fullname{'Vcarteri_v2'              }</option>
		<option value=\'Xenla9\'                    synonym=\"$db_synonym{'Xenla9'                   }\">$db_fullname{'Xenla9'                   }</option>
		<option value=\'Xenla7\'                    synonym=\"$db_synonym{'Xenla7'                   }\">$db_fullname{'Xenla7'                   }</option>
		<option value=\'Xentr9\'                    synonym=\"$db_synonym{'Xentr9'                   }\">$db_fullname{'Xentr9'                   }</option>
		<option value=\'Xentr8\'                    synonym=\"$db_synonym{'Xentr8'                   }\">$db_fullname{'Xentr8'                   }</option>
		<option value=\'Xentr7\'                    synonym=\"$db_synonym{'Xentr7'                   }\">$db_fullname{'Xentr7'                   }</option>
		<option value=\'TAIR10\'                    synonym=\"$db_synonym{'TAIR10'                   }\">$db_fullname{'TAIR10'                   }</option>
		<option value=\'rice\'                      synonym=\"$db_synonym{'rice'                     }\">$db_fullname{'rice'                     }</option>
		<option value=\'sorBic\'                    synonym=\"$db_synonym{'sorBic'                   }\">$db_fullname{'sorBic'                   }</option>
		<option value=\'Brana_v4.1\'                synonym=\"$db_synonym{'Brana_v4.1'               }\">$db_fullname{'Brana_v4.1'               }</option>
		<option value=\'lotus_r3.0\'                synonym=\"$db_synonym{'lotus_r3.0'               }\">$db_fullname{'lotus_r3.0'               }</option>
		<option value=\'Niben_v1.0.1\'              synonym=\"$db_synonym{'Niben_v1.0.1'             }\">$db_fullname{'Niben_v1.0.1'             }</option>
		<option value=\'adzuki_ver3\'               synonym=\"$db_synonym{'adzuki_ver3'              }\">$db_fullname{'adzuki_ver3'              }</option>
		<option value=\'RSA_r1.0\'                  synonym=\"$db_synonym{'RSA_r1.0'                 }\">$db_fullname{'RSA_r1.0'                 }</option>
		<option value=\'Ptrichocarpa_v3.0\'         synonym=\"$db_synonym{'Ptrichocarpa_v3.0'        }\">$db_fullname{'Ptrichocarpa_v3.0'        }</option>
		<option value=\'bmor1\'                     synonym=\"$db_synonym{'bmor1'                    }\">$db_fullname{'bmor1'                    }</option>
		<option value=\'pombe\'                     synonym=\"$db_synonym{'pombe'                    }\">$db_fullname{'pombe'                    }</option>
		<option value=\'macaque_CE_1\'              synonym=\"$db_synonym{'macaque_CE_1'             }\">$db_fullname{'macaque_CE_1'             }</option>
		<option value=\'KH\'                        synonym=\"$db_synonym{'KH'                       }\">$db_fullname{'KH'                       }</option>
		<option value=\'Spur_v3.1\'                 synonym=\"$db_synonym{'Spur_v3.1'                }\">$db_fullname{'Spur_v3.1'                }</option>
		<option value=\'h7\'                        synonym=\"$db_synonym{'h7'                       }\">$db_fullname{'h7'                       }</option>
		<option value=\'Hydra_RP_1.0\'              synonym=\"$db_synonym{'Hydra_RP_1.0'             }\">$db_fullname{'Hydra_RP_1.0'             }</option>
--EOS--

$db and $select =~ s/(?<=option value=\'$db\')/ selected/ ;  # 生物種を選択
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
