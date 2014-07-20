CRISPRdirect
======================

CRISPR/Casシステムのターゲット配列を設計するウェブサービスです。

+ http://crispr.dbcls.jp/  
  本レポジトリにあるCGIが実際に稼働しています。


サンプル画像
--------

![スクリーンショット]
(http://g86.dbcls.jp/~meso/meme/wp-content/uploads/2014/04/CRISPRscreen.png
"スクリーンショット")


API
--------

下記の変数を設定し ./ に POST または GET すると設計結果を取得できます。

+ *userseq* (省略不可)  
  FASTA形式、または塩基配列のみを含むテキスト。  
  塩基構成文字以外は除去され、UはTに置換される。

+ *accession* (省略可)  
  設計には使われないが、accession番号を設計結果に表示できる。

+ *pam* (省略可)  
  PAMを指定。現在は3塩基に限定。省略時はNGG。

+ *db* (省略可)  
  特異性確認のためのデータベース。  
  hg19    : ヒトゲノム  
  mm10    : マウスゲノム  
  rn5     : ラットゲノム  
  calJac3 : マーモセットゲノム  
  susScr3 : ブタゲノム  
  galGal4 : ニワトリゲノム  
  xenTro3 : ツメガエルゲノム  
  danRer7 : ゼブラフィッシュゲノム  
  ci2     : ホヤゲノム  
  dm3     : ショウジョウバエゲノム  
  ce10    : 線虫ゲノム  
  TAIR10  : シロイヌナズナゲノム  
  rice    : イネゲノム  
  sorBic  : ソルガムゲノム  
  bmor1   : カイコゲノム  
  sacCer3 : 出芽酵母ゲノム

+ *format* (省略可)  
  設計結果のフォーマット。  
  html : HTML（省略時のデフォルト)  
  txt  : タブ区切りテキスト  
  json : JSON形式

+ *download* (省略可)  
検索結果をファイルとしてダウンロード (txt, jsonのみ)


関連プロジェクト
--------

+ siDirect (http://siDirect.RNAi.jp/)  
  哺乳類細胞で活性が高く標的遺伝子に特異的なsiRNAの設計ウェブサーバ

+ 統合遺伝子検索GGRNA (http://GGRNA.dbcls.jp/)  
  遺伝子をGoogleのように検索できるウェブサーバ
  → [紹介記事](http://first.lifesciencedb.jp/from_dbcls/e0001)

+ 高速配列検索GGGenome (http://GGGenome.dbcls.jp/)  
  ゲノム等の塩基配列を高速に検索できるウェブサーバ


ライセンス
--------

Copyright &copy; 2013-2014 Yuki Naito
 ([@meso_cacase](http://twitter.com/meso_cacase)) at  
Database Center for Life Science (DBCLS), Japan.  
This software is distributed under [modified BSD license]
 (http://www.opensource.org/licenses/bsd-license.php).
