package DBlist ;

# データベースの正式名およびホスト名/ポート番号の一覧
#
# フォーマット：
# DB	host	port_23nt	port_15nt	port_11nt	fullname

$dbconfig =
<<'--EOS--' ;
hg19    	localhost	6738	6737	6736	Human (Homo sapiens) genome, GRCh37/hg19 (Feb, 2009)
mm10    	localhost	6748	6747	6746	Mouse (Mus musculus) genome, GRCm38/mm10 (Dec, 2011)
rn5     	localhost	6758	6757	6756	Rat (Rattus norvegicus) genome, RGSC 5.0/rn5 (Mar, 2012)
calJac3 	localhost	6888	6887	6886	Marmoset (Callithrix jacchus) genome, WUGSC 3.2/calJac3 (Mar, 2009)
susScr3 	localhost	6878	6877	6876	Pig (Sus scrofa) genome, SGSC Sscrofa10.2/susScr3 (Aug, 2011)
galGal4 	localhost	6768	6767	6766	Chicken (Gallus gallus) genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)
xenTro3 	localhost	6778	6777	6776	Frog (Xenopus tropicalis) genome, JGI 4.2/xenTro3 (Nov, 2009)
Xenla7  	localhost	6898	6897	6896	Frog (Xenopus laevis) genome, JGI 7.1/Xenla7 (Dec, 2013)
danRer7 	localhost	6788	6787	6786	Zebrafish (Danio rerio) genome, Zv9/danRer7 (Jul, 2010)
ci2     	localhost	6798	6797	6796	Sea squirt (Ciona intestinalis) genome, JGI 2.1/ci2 (Mar, 2005)
dm3     	localhost	6808	6807	6806	Fruit fly (Drosophila melanogaster) genome, BDGP R5/dm3 (Apr, 2006)
ce10    	localhost	6818	6817	6816	Roundworm (Caenorhabditis elegans) genome, WS220/ce10 (Oct, 2010)
TAIR10  	localhost	6828	6827	6826	Thale cress (Arabidopsis thaliana) genome, TAIR10 (Nov, 2010)
rice    	localhost	6838	6837	6836	Rice (Oryza sativa) genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)
sorBic  	localhost	6868	6867	6866	Sorghum (Sorghum bicolor) genome, Sorghum bicolor v2.1 (May, 2013)
bmor1   	localhost	6848	6847	6846	Silkworm (Bombyx mori) genome, Bmor1 (Apr, 2008)
sacCer3 	localhost	6858	6857	6856	Budding yeast (Saccharomyces cerevisiae) (S288C) genome, sacCer3 (Apr, 2011)
pombe   	localhost	6908	6907	6906	Fission yeast (Schizosaccharomyces pombe) (972h-) genome, ASM294v2 (Nov, 2007)
--EOS--

return 1 ;
