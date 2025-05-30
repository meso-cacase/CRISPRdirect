CRISPRdirect
======================

**CRISPRdirect** is a web server for selecting rational CRISPR-Cas9 guide RNAs.  
The web server of CRISPRdirect is freely available to all users.  
CRISPRdirect web server: https://GGGenome.dbcls.jp/en/

CRISPR-Cas9システムのターゲット配列を設計するウェブサービスです。  
どなたでも無償で自由に利用できます。

+ https://crispr.dbcls.jp/  
  本レポジトリにあるCGIが実際に稼働しています。

![スクリーンショット](https://data.dbcls.jp/~meso/img/CRISPRscreen.png
"スクリーンショット")


API
--------

下記の変数を設定し ./ に POST または GET すると設計結果を取得できます。

+ `userseq` (省略不可)  
  FASTA形式、または塩基配列のみを含むテキスト。  
  塩基構成文字以外は除去され、UはTに置換される。

+ `accession` (省略可)  
  設計には使われないが、accession番号を設計結果に表示できる。

+ `pam` (省略可)  
  PAMを指定。現在は3塩基に限定。省略時は `NGG` 。

+ `db` (省略可)  
  特異性確認のためのデータベース。  
  `hg19` : ヒトゲノム  
  `mm10` : マウスゲノム  
  `rn5`  : ラットゲノム  
  その他 → [利用可能な生物種一覧](https://crispr.dbcls.jp/doc/#db_list)

+ `format` (省略可)  
  設計結果のフォーマット。  
  `html` : HTML（省略時のデフォルト)  
  `txt`  : タブ区切りテキスト  
  `json` : JSON形式

+ `download` (省略可)  
検索結果をファイルとしてダウンロード (txt, jsonのみ)


関連プロジェクト
--------

+ siDirect (http://siDirect.RNAi.jp/)  
  哺乳類細胞で活性が高く標的遺伝子に特異的なsiRNAの設計ウェブサーバ

+ 統合遺伝子検索GGRNA (https://GGRNA.dbcls.jp/)  
  遺伝子をGoogleのように検索できるウェブサーバ
  → [紹介記事](https://first.lifesciencedb.jp/from_dbcls/e0001)

+ 高速配列検索GGGenome (https://GGGenome.dbcls.jp/)  
  ゲノム等の塩基配列を高速に検索できるウェブサーバ


License
--------

Copyright &copy; 2013-2025 Yuki Naito
 ([@meso_cacase](https://twitter.com/meso_cacase)) at  
Database Center for Life Science (DBCLS), Japan.  
This software is distributed under
[modified BSD license](https://opensource.org/licenses/bsd-license.php).
