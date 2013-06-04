CRISPRdirect
======================

CRISPR/Casシステムのターゲット配列を設計するウェブサービスです。

+ http://altair.dbcls.jp/CRISPR/  
  本レポジトリにあるCGIが実際に稼働しています。


API
--------

下記の変数を設定し ./ に POST または GET すると設計結果を取得できます。

+ *userseq* (省略不可)  
  FASTA形式、または塩基配列のみを含むテキスト。  
  塩基構成文字以外は除去され、UはTに置換される。

+ *accession* (省略可)  
  設計には使われないが、accession番号を設計結果に表示できる。

+ *db* (省略可)  
  特異性確認のためのデータベース。  
  hg19 : ヒトゲノム

+ *format* (省略可)  
  設計結果のフォーマット。  
  html : HTML（省略時のデフォルト)  
  txt  : タブ区切りテキスト  
  json : JSON形式


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

Copyright &copy; 2013 Yuki Naito
 ([@meso_cacase](http://twitter.com/meso_cacase))  
