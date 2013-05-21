#!/usr/bin/perl

# CRISPRdirect: CRISPR/Casシステムのターゲット配列設計サーバ
#
# 必要なモジュール:
# HTML::Template
# LWP::Simple
#
# 2013-04-18 Yuki Naito (@meso_cacase) 実装開始

#- ▼ モジュール読み込みと変数の初期化
use warnings ;
use strict ;
use Time::HiRes ;

eval 'use HTML::Template ; 1' or  # HTMLをテンプレート化
	printresult('ERROR : cannot load HTML::Template') ;

eval 'use LWP::Simple ; 1' or     # 曖昧検索サーバとの接続に使用
	printresult('ERROR : cannot load LWP::Simple') ;

my @timer ;                       # 実行時間計測用
my $timestamp = timestamp() ;     # CGIを実行した時刻

my %db_fullname = (               # データベースの正式名
	'hg19'   => 'Human genome, GRCh37/hg19 (Feb, 2009)',
	# 'mm10'   => 'Mouse genome, GRCm38/mm10 (Dec, 2011)',
	# 'rn5'    => 'Rat genome, RGSC 5.0/rn5 (Mar, 2012)',
	# 'dm3'    => 'Drosophila genome, BDGP Rel. 5/dm3 (Apr, 2006)',
	# 'ce10'   => 'C. elegans genome, WS220/ce10 (Oct, 2010)',
) ;
#- ▲ モジュール読み込みと変数の初期化

#- ▼ リクエストからパラメータを取得
push @timer, [Time::HiRes::time(), 'start;'] ;                       #===== 実行時間計測 =====

my %query = get_query_parameters() ;  # HTTPリクエストからパラメータを取得

#-- ▽ 使用するパラメータ一覧
my $accession =                       # Accession番号: NM_003380, ...
	$query{'accession'} // '' ;

my $userseq =                         # 塩基配列: (FASTA形式または塩基配列のみ)
	$query{'userseq'} // '' ;

my $db = lc(                          # 特異性確認のデータベース: hg19, mm10, ...
	$query{'db'} // '') ;

my $format =                          # 出力フォーマット: html, txt, json
	($query{'format'} and $query{'format'} =~ /^(html|txt|json)$/i) ?
	lc($query{'format'}) : '' ;

my $download =                        # ファイルとしてダウンロードするか: (boolean)
	($query{'download'} and $format =~ /^(txt|json)$/) ?
	$query{'download'} : '' ;
#-- △ 使用するパラメータ一覧
#- ▲ リクエストからパラメータを取得


#- 引数なし：トップページ表示


if (not $accession and not $userseq){

	printresult('test') ;
}

#- accession=配列を取得してトップページ表示
elsif ($accession and $format eq 'txt'){
	printresult('test') ;
}


#- accession：配列を取得してテキストを出力
elsif ($accession){
	printresult('test') ;
}




#- userseq：配列設計を行い結果を出力
elsif ($userseq){
	printresult('test') ;
}

else {
	printresult('test') ;
}

#- ▲ 結果出力

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
		printresult('ERROR : get_query_parameters() : read failed') ;
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
sub printresult {  # $format (global) にあわせて結果を出力
($format eq 'txt' ) ? print_txt($_[0])  :
($format eq 'json') ? print_json($_[0]) :
                      print_html($_[0]) ;  # default format: html
exit ;
} ;
# ====================
sub print_txt {  # TXTを出力
# ■■■ 未実装 ■■■
print_html($_[0]) ;  # temporary
exit ;
} ;
# ====================
sub print_json {  # JSONを出力
# ■■■ 未実装 ■■■
print_html($_[0]) ;  # temporary
exit ;
} ;
# ====================
sub print_html {  # HTMLを出力

#- ▼ メモ
# ・検索結果ページをHTMLで出力
# ・引数が ERROR で始まる場合はエラーページを出力
#- ▲ メモ

my $html = $_[0] // '' ;

#- ▼ HTML出力
my $template = HTML::Template->new(filename => 'template/design.tmpl') ;

$template->param(
	HTML => $html
) ;

print "Content-type: text/html; charset=utf-8\n\n" ;
print $template->output ;
#- ▲ HTML出力

exit ;
} ;
# ====================
