package DBlist ;

# データベースの正式名およびホスト名/ポート番号の一覧
#
# フォーマット：
# DB	host	port	source	fullname	synonym(複数の場合は;で区切る)
#
# ホスト一覧：
# 172.18.8.71	s01.dbcls.jp
# 172.18.8.72	s02.dbcls.jp
# 172.18.8.73	s03.dbcls.jp
# 172.18.8.74	s04.dbcls.jp
# 172.18.8.75	s05.dbcls.jp
# 172.18.8.76	s06.dbcls.jp
# 172.18.8.77	s07.dbcls.jp
# 172.18.8.78	s08.dbcls.jp

$dbconfig =
<<'--EOS--' ;
hg38                     	172.18.8.138	28017	UCSC	Human genome, GRCh38/hg38 (Dec, 2013)	Homo sapiens
hg19                     	172.18.8.138	28018	UCSC	Human genome, GRCh37/hg19 (Feb, 2009)	Homo sapiens
mm39                     	172.18.8.138	28851	UCSC	Mouse genome, GRCm39/mm39 (Jun, 2020)	Mus musculus
mm10                     	172.18.8.138	28019	UCSC	Mouse genome, GRCm38/mm10 (Dec, 2011)	Mus musculus
mm9                      	172.18.8.78	28020	UCSC	Mouse genome, NCBI37/mm9 (Jul, 2007)	Mus musculus
vicPac2                  	172.18.8.78	28021	UCSC	Alpaca genome, Vicugna_pacos-2.0.1/vicPac2 (Mar, 2013)	Vicugna pacos
dasNov3                  	172.18.8.78	28022	UCSC	Armadillo genome, Baylor/dasNov3 (Dec, 2011)	Dasypus novemcinctus
papAnu2                  	172.18.8.78	28023	UCSC	Baboon genome, Baylor Panu_2.0/papAnu2 (Mar, 2012)	Papio anubis
otoGar3                  	172.18.8.78	28024	UCSC	Bushbaby genome, Broad/otoGar3 (Mar, 2011)	Otolemur garnettii
felCat5                  	172.18.8.78	28025	UCSC	Cat genome, ICGSC Felis_catus 6.2/felCat5 (Sep, 2011)	Felis catus
panTro4                  	172.18.8.78	28026	UCSC	Chimpanzee genome, CSAC 2.1.4/panTro4 (Feb, 2011)	Pan troglodytes
criGri1                  	172.18.8.78	28027	UCSC	Chinese hamster genome, C_griseus_v1.0/criGri1 (Jul, 2013)	Cricetulus griseus
bosTau7                  	172.18.8.78	28028	UCSC	Cow genome, Btau_4.6.1/bosTau7 (Oct, 2011)	Bos taurus
bosTau8                  	172.18.8.78	28029	UCSC	Cow genome, Bos_taurus_UMD_3.1.1/bosTau8 (Jun, 2014)	Bos taurus
canFam3                  	172.18.8.78	28030	UCSC	Dog genome, Broad CanFam3.1/canFam3 (Sep, 2011)	Canis lupus familiaris
turTru2                  	172.18.8.78	28031	UCSC	Dolphin genome, Baylor Ttru_1.4/turTru2 (Oct, 2011)	Tursiops truncatus
loxAfr3                  	172.18.8.78	28032	UCSC	Elephant genome, Broad/loxAfr3 (Jul, 2009)	Loxodonta africana
musFur1                  	172.18.8.78	28033	UCSC	Ferret genome, MusPutFur1.0/musFur1 (Apr, 2011)	Mustela putorius furo
nomLeu3                  	172.18.8.78	28034	UCSC	Gibbon genome, GGSC Nleu3.0/nomLeu3 (Oct, 2012)	Nomascus leucogenys
gorGor3                  	172.18.8.78	28035	UCSC	Gorilla genome, gorGor3.1/gorGor3 (May, 2011)	Gorilla gorilla gorilla
cavPor3                  	172.18.8.78	28036	UCSC	Guinea pig genome, Broad/cavPor3 (Feb, 2008)	Cavia porcellus
eriEur2                  	172.18.8.78	28037	UCSC	Hedgehog genome, EriEur2.0/eriEur2 (May, 2012)	Erinaceus europaeus
equCab2                  	172.18.8.78	28038	UCSC	Horse genome, Broad/equCab2 (Sep, 2007)	Equus caballus
dipOrd1                  	172.18.8.78	28039	UCSC	Kangaroo rat genome, Broad/dipOrd1 (Jul, 2008)	Dipodomys ordii
triMan1                  	172.18.8.78	28040	UCSC	Manatee genome, Broad v1.0/triMan1 (Oct, 2011)	Trichechus manatus latirostris
calJac3                  	172.18.8.78	28041	UCSC	Marmoset genome, WUGSC 3.2/calJac3 (Mar, 2009)	Callithrix jacchus
pteVam1                  	172.18.8.78	28042	UCSC	Megabat genome, Broad/pteVam1 (Jul, 2008)	Pteropus vampyrus
myoLuc2                  	172.18.8.78	28043	UCSC	Microbat genome, Broad Institute Myoluc2.0/myoLuc2 (Jul, 2010)	Myotis lucifugus
balAcu1                  	172.18.8.77	28044	UCSC	Minke whale genome, BalAcu1.0/balAcu1 (Oct, 2013)	Balaenoptera acutorostrata scammoni
micMur1                  	172.18.8.77	28045	UCSC	Mouse lemur genome, Broad/micMur1 (Jul, 2007)	Microcebus murinus
hetGla2                  	172.18.8.77	28046	UCSC	Naked mole-rat genome, Broad HetGla_female_1.0/hetGla2 (Jan, 2012)	Heterocephalus glaber
monDom5                  	172.18.8.77	28047	UCSC	Opossum genome, Broad/monDom5 (Oct, 2006)	Monodelphis domestica
ponAbe2                  	172.18.8.77	28048	UCSC	Orangutan genome, WUGSC 2.0.2/ponAbe2 (Jul, 2007)	Pongo abelii
ailMel1                  	172.18.8.77	28049	UCSC	Panda genome, BGI-Shenzhen 1.0/ailMel1 (Dec, 2009)	Ailuropoda melanoleuca
susScr3                  	172.18.8.77	28050	UCSC	Pig genome, SGSC Sscrofa10.2/susScr3 (Aug, 2011)	Sus scrofa
ochPri3                  	172.18.8.77	28051	UCSC	Pika genome, OchPri3.0/ochPri3 (May, 2012)	Ochotona princeps
ornAna1                  	172.18.8.77	28052	UCSC	Platypus genome, WUGSC 5.0.1/ornAna1 (Mar, 2007)	Ornithorhynchus anatinus
oryCun2                  	172.18.8.77	28053	UCSC	Rabbit genome, Broad/oryCun2 (Apr, 2009)	Oryctolagus cuniculus
rn6                      	172.18.8.77	28054	UCSC	Rat genome, RGSC 6.0/rn6 (Jul, 2014)	Rattus norvegicus
rn5                      	172.18.8.77	28055	UCSC	Rat genome, RGSC 5.0/rn5 (Mar, 2012)	Rattus norvegicus
rheMac3                  	172.18.8.77	28056	UCSC	Rhesus genome, BGI CR_1.0/rheMac3 (Oct, 2010)	Macaca mulatta
proCap1                  	172.18.8.77	28057	UCSC	Rock hyrax genome, Broad/proCap1 (Jul, 2008)	Procavia capensis;cape hyrax
oviAri3                  	172.18.8.77	28058	UCSC	Sheep genome, ISGC Oar_v3.1/oviAri3 (Aug, 2012)	Ovis aries
sorAra2                  	172.18.8.77	28059	UCSC	Shrew genome, Broad/sorAra2 (Aug, 2008)	Sorex araneus
choHof1                  	172.18.8.77	28060	UCSC	Sloth genome, Broad/choHof1 (Jul, 2008)	Choloepus hoffmanni
speTri2                  	172.18.8.77	28061	UCSC	Squirrel genome, Broad/speTri2 (Nov, 2011)	Spermophilus tridecemlineatus
saiBol1                  	172.18.8.77	28062	UCSC	Squirrel monkey genome, Broad/saiBol1 (Oct, 2011)	Saimiri boliviensis
tarSyr1                  	172.18.8.77	28063	UCSC	Tarsier genome, Broad/tarSyr1 (Aug, 2008)	Tarsius syrichta
sarHar1                  	172.18.8.77	28064	UCSC	Tasmanian devil genome, WTSI Devil_ref v7.0/sarHar1 (Feb, 2011)	Sarcophilus harrisii
echTel2                  	172.18.8.77	28065	UCSC	Tenrec genome, Broad/echTel2 (Nov, 2012)	Echinops telfairi
tupBel1                  	172.18.8.77	28066	UCSC	Tree shrew genome, Broad/tupBel1 (Dec, 2006)	Tupaia belangeri
macEug2                  	172.18.8.77	28067	UCSC	Wallaby genome, TWGS Meug_1.1/macEug2 (Sep, 2009)	Macropus eugenii
cerSim1                  	172.18.8.77	28068	UCSC	White rhinoceros genome, CerSimSim1.0/cerSim1 (May, 2012)	Ceratotherium simum
allMis1                  	172.18.8.76	28069	UCSC	American alligator genome, allMis0.2/allMis1 (Aug, 2012)	Alligator mississippiensis
gadMor1                  	172.18.8.76	28070	UCSC	Atlantic cod genome, Genofisk GadMor_May2010/gadMor1 (May, 2010)	Gadus morhua
melUnd1                  	172.18.8.76	28071	UCSC	Budgerigar genome, WUSTL v6.3/melUnd1 (Sep, 2011)	Melopsittacus undulatus
galGal4                  	172.18.8.76	28072	UCSC	Chicken genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)	Gallus gallus
latCha1                  	172.18.8.76	28073	UCSC	Coelacanth genome, Broad/latCha1 (Aug, 2011)	Latimeria chalumnae
calMil1                  	172.18.8.76	28074	UCSC	Elephant shark genome, Callorhinchus_milii-6.1.3/calMil1 (Dec, 2013)	Callorhinchus milii
fr3                      	172.18.8.76	28075	UCSC	Fugu genome, FUGU5/fr3 (Oct, 2011)	Takifugu rubripes
petMar2                  	172.18.8.76	28076	UCSC	Lamprey genome, WUGSC 7.0/petMar2 (Sep, 2010)	Petromyzon marinus
anoCar2                  	172.18.8.76	28077	UCSC	Lizard genome, Broad AnoCar2.0/anoCar2 (May, 2010)	Anolis carolinensis
oryLat2                  	172.18.8.76	28078	UCSC	Medaka genome, NIG/UT MEDAKA1/oryLat2 (Oct, 2005)	Oryzias latipes
geoFor1                  	172.18.8.76	28079	UCSC	Medium ground finch genome, GeoFor_1.0/geoFor1 (Apr, 2012)	Geospiza fortis
oreNil2                  	172.18.8.76	28080	UCSC	Nile tilapia genome, Broad oreNil1.1/oreNil2 (Jan, 2011)	Oreochromis niloticus
chrPic1                  	172.18.8.76	28081	UCSC	Painted turtle genome, v3.0.1/chrPic1 (Dec, 2011)	Chrysemys picta bellii
gasAcu1                  	172.18.8.76	28082	UCSC	Stickleback genome, Broad/gasAcu1 (Feb, 2006)	Gasterosteus aculeatus
tetNig2                  	172.18.8.76	28083	UCSC	Tetraodon genome, Genoscope 8.0/tetNig2 (Mar, 2007)	Tetraodon nigroviridis
melGal1                  	172.18.8.76	28084	UCSC	Turkey genome, TGC Turkey_2.01/melGal1 (Dec, 2009)	Meleagris gallopavo
xenTro3                  	172.18.8.76	28085	UCSC	Xenopus tropicalis genome, JGI 4.2/xenTro3 (Nov, 2009)	Xenopus tropicalis;western clawed frog
taeGut2                  	172.18.8.76	28086	UCSC	Zebra finch genome, WashU taeGut324/taeGut2 (Feb, 2013)	Taeniopygia guttata
danRer7                  	172.18.8.76	28087	UCSC	Zebrafish genome, Zv9/danRer7 (Jul, 2010)	Danio rerio
danRer10                 	172.18.8.76	28088	UCSC	Zebrafish genome, GRCz10/danRer10 (Sep, 2014)	Danio rerio
danRer11                 	172.18.8.76	28089	UCSC	Zebrafish genome, GRCz11/danRer11 (May, 2017)	Danio rerio
ci2                      	172.18.8.76	28090	UCSC	Ciona intestinalis genome, JGI 2.1/ci2 (Mar, 2005)	Ciona intestinalis;transparent sea squirt
braFlo1                  	172.18.8.76	28091	UCSC	Lancelet genome, JGI 1.0/braFlo1 (Mar, 2006)	Branchiostoma floridae
strPur2                  	172.18.8.76	28092	UCSC	S. purpuratus genome, Baylor 2.1/strPur2 (Sep, 2006)	Strongylocentrotus purpuratus;purple sea urchin
anoGam1                  	172.18.8.76	28093	UCSC	A. gambiae genome, IAGEC MOZ2/anoGam1 (Feb, 2003)	Anopheles gambiae;african malaria mosquito
apiMel2                  	172.18.8.76	28094	UCSC	A. mellifera genome, Baylor 2.0/apiMel2 (Jan, 2005)	Apis mellifera;honeybee
droAna2                  	172.18.8.76	28095	UCSC	D. ananassae genome, Agencourt prelim/droAna2 (Aug, 2005)	Drosophila ananassae;fruit fly
droEre1                  	172.18.8.76	28096	UCSC	D. erecta genome, Agencourt prelim/droEre1 (Aug, 2005)	Drosophila erecta;fruit fly
droGri1                  	172.18.8.76	28097	UCSC	D. grimshawi genome, Agencourt prelim/droGri1 (Aug, 2005)	Drosophila grimshawi;fruit fly
dm6                      	172.18.8.76	28098	UCSC	D. melanogaster genome, BDGP Release 6 + ISO1 MT/dm6 (Aug, 2014)	Drosophila melanogaster;fruit fly
dm3                      	172.18.8.76	28099	UCSC	Drosophila melanogaster genome, BDGP R5/dm3 (Apr, 2006)	Drosophila melanogaster;fruit fly
droMoj2                  	172.18.8.76	28100	UCSC	D. mojavensis genome, Agencourt prelim/droMoj2 (Aug, 2005)	Drosophila mojavensis;fruit fly
droPer1                  	172.18.8.76	28101	UCSC	D. persimilis genome, Broad/droPer1 (Oct, 2005)	Drosophila persimilis;fruit fly
dp3                      	172.18.8.76	28102	UCSC	D. pseudoobscura genome, FlyBase 1.03/dp3 (Nov, 2004)	Drosophila pseudoobscura;fruit fly
droSec1                  	172.18.8.76	28103	UCSC	D. sechellia genome, Broad/droSec1 (Oct, 2005)	Drosophila sechellia;fruit fly
droSim1                  	172.18.8.76	28104	UCSC	D. simulans genome, WUGSC mosaic 1.0/droSim1 (Apr, 2005)	Drosophila simulans;fruit fly
droVir2                  	172.18.8.76	28105	UCSC	D. virilis genome, Agencourt prelim/droVir2 (Aug, 2005)	Drosophila virilis;fruit fly
droYak2                  	172.18.8.76	28106	UCSC	D. yakuba genome, WUGSC 7.1/droYak2 (Nov, 2005)	Drosophila yakuba;fruit fly
caePb2                   	172.18.8.76	28107	UCSC	C. brenneri genome, WUGSC 6.0.1/caePb2 (Feb, 2008)	Caenorhabditis brenneri;nematode worm
cb3                      	172.18.8.76	28108	UCSC	C. briggsae genome, WUGSC 1.0/cb3 (Jan, 2007)	Caenorhabditis briggsae;nematode worm
ce10                     	172.18.8.76	28109	UCSC	C. elegans genome, WS220/ce10 (Oct, 2010)	Caenorhabditis elegans;nematode worm
caeJap1                  	172.18.8.76	28110	UCSC	C. japonica genome, WUGSC 3.0.2/caeJap1 (Mar, 2008)	Caenorhabditis japonica;nematode worm
caeRem3                  	172.18.8.76	28111	UCSC	C. remanei genome, WUGSC 15.0.1/caeRem3 (May, 2007)	Caenorhabditis remanei;nematode worm
priPac1                  	172.18.8.76	28112	UCSC	P. pacificus genome, WUGSC 5.0/priPac1 (Feb, 2007)	Pristionchus pacificus;parasitic nematode
sacCer3                  	172.18.8.76	28113	UCSC	S. cerevisiae (S288C) genome, SacCer_Apr2011/sacCer3 (Apr, 2011)	Saccharomyces cerevisiae;budding yeast
aplCal1                  	172.18.8.76	28114	UCSC	Sea hare genome, Broad 2.0/aplCal1 (Sep, 2008)	Aplysia californica
eboVir3                  	172.18.8.76	28115	UCSC	Ebola virus genome, Sierra Leone G3683/KM034562.1/eboVir3 (Jun, 2014)	Filoviridae ebolavirus
hg18                     	172.18.8.76	28116	UCSC	Human genome, NCBI36/hg18 (Mar, 2006)	Homo sapiens
OryAfe1.0                	172.18.8.76	28117	Ensembl	Aardvark genome, OryAfe1.0 (May, 2012)	Orycteropus afer
PoeFor_5.1.2             	172.18.8.76	28118	Ensembl	Amazon molly genome, Poecilia_formosa-5.1.2 (Oct, 2013)	Poecilia formosa
CSAV2.0                  	172.18.8.76	28119	Ensembl	Ciona savignyi genome, CSAV 2.0 (Oct, 2005)	Ciona savignyi;pacific transparent sea squirt
AstMex102                	172.18.8.76	28120	Ensembl	Cave fish genome, AstMex102 (Apr, 2013)	Astyanax mexicanus
PelSin_1.0               	172.18.8.76	28121	Ensembl	Chinese softshell turtle genome, PelSin_1.0 (Oct, 2011)	Pelodiscus sinensis
MacFas5.0                	172.18.8.76	28122	Ensembl	Crab-eating macaque genome, MacFas5.0 (Jun, 2013)	Macaca fascicularis
BGI_duck_1.0             	172.18.8.76	28123	Ensembl	Duck genome, BGI_duck_1.0 (Apr, 2013)	Anas platyrhynchos
FicAlb_1.4               	172.18.8.76	28124	Ensembl	Flycatcher genome, FicAlb_1.4 (Jan, 2012)	Ficedula albicollis
Pham                     	172.18.8.76	28125	Ensembl	Hamadryas baboon genome, Pham (Nov, 2008)	Papio hamadryas
Xipmac4.4.2              	172.18.8.76	28126	Ensembl	Platyfish genome, Xipmac4.4.2 (Jan, 2012)	Xiphophorus maculatus
MicOch1.0                	172.18.8.76	28127	Ensembl	Prairie vole genome, MicOch1.0 (Nov, 2012)	Microtus ochrogaster
PhyMac_2.0.2             	172.18.8.76	28128	Ensembl	Sperm whale genome, PhyMac_2.0.2 (Sep, 2013)	Physeter macrocephalus
LepOcu1                  	172.18.8.76	28129	Ensembl	Spotted gar genome, LepOcu1 (Dec, 2011)	Lepisosteus oculatus
ChlSab1.1                	172.18.8.76	28130	Ensembl	Green monkey genome, ChlSab1.1 (Mar, 2014)	Chlorocebus sabaeus
Acyr_2.0                 	172.18.8.76	28131	EnsemblMetazoa	Acyrthosiphon pisum genome, Acyr_2.0 (Jun, 2010)	Acyrthosiphon pisum;pea aphid
AaegL3                   	172.18.8.76	28132	EnsemblMetazoa	Aedes aegypti genome, AaegL3 (Dec, 2013)	Aedes aegypti;yellow fever mosquito
Aqu1                     	172.18.8.76	28133	EnsemblMetazoa	Amphimedon queenslandica genome, Aqu1 (Oct, 2010)	Amphimedon queenslandica;sponge
AdarC3                   	172.18.8.76	28134	EnsemblMetazoa	Anopheles darlingi genome, AdarC3 (Jan, 2014)	Anopheles darlingi;american malaria mosquito
Attacep1.0               	172.18.8.76	28135	EnsemblMetazoa	Atta cephalotes genome, Attacep1.0 (Jul, 2012)	Atta cephalotes;leafcutter ant
ASM15162v1               	172.18.8.76	28136	EnsemblMetazoa	Silkworm genome, ASM15162v1 (Feb, 2013)	Bombyx mori
B_malayi_3.0             	172.18.8.76	28137	EnsemblMetazoa	Brugia malayi genome, B_malayi-3.0 (Dec, 2012)	Brugia malayi;filarial nematode worm
Capte_v1.0               	172.18.8.76	28138	EnsemblMetazoa	Capitella teleta genome, Capitella teleta v1.0 (Dec, 2012)	Capitella teleta;polychaete worm
oyster_v9                	172.18.8.76	28139	EnsemblMetazoa	Crassostrea gigas genome, oyster_v9 (Sep, 2012)	Crassostrea gigas;pacific oyster
CpipJ2                   	172.18.8.76	28140	EnsemblMetazoa	Culex quinquefasciatus genome, CpipJ2 (Jan, 2007)	Culex quinquefasciatus;southern house mosquito
DanPle_1.0               	172.18.8.76	28141	EnsemblMetazoa	Danaus plexippus genome, DanPle_1.0 (Nov, 2011)	Danaus plexippus;monarch butterfly
Dappu_V1.0               	172.18.8.76	28142	EnsemblMetazoa	Daphnia pulex genome, V1.0 (Feb, 2011)	Daphnia pulex;water flea
DendPond_1.0             	172.18.8.76	28143	EnsemblMetazoa	Dendroctonus ponderosae genome, DendPond_male_1.0 (Apr, 2013)	Dendroctonus ponderosae;mountain pine beetle
dwil_caf1                	172.18.8.76	28144	EnsemblMetazoa	Drosophila willistoni genome, dwil_caf1 (Jul, 2008)	Drosophila willistoni;fruit fly
Hmel1                    	172.18.8.76	28145	EnsemblMetazoa	Heliconius melpomene genome, Hmel1 (Feb, 2012)	Heliconius melpomene;postman butterfly
Helro1                   	172.18.8.76	28146	EnsemblMetazoa	Helobdella robusta genome, Helro1 (Dec, 2012)	Helobdella robusta;californian leech
IscaW1                   	172.18.8.76	28147	EnsemblMetazoa	Ixodes scapularis genome, IscaW1 (Aug, 2007)	Ixodes scapularis;black-legged tick
Loa_loa_V3               	172.18.8.76	28148	EnsemblMetazoa	Loa loa genome, Loa_loa_V3 (Jan, 2010)	Loa loa;eye worm
Lotgi1                   	172.18.8.76	28149	EnsemblMetazoa	Lottia gigantea genome, Lotgi1 (Jan, 2013)	Lottia gigantea;giant owl limpet
Msca1                    	172.18.8.76	28150	EnsemblMetazoa	Megaselia scalaris genome, Msca1 (Feb, 2013)	Megaselia scalaris;humpbacked fly
MelCinx1.0               	172.18.8.76	28151	EnsemblMetazoa	Melitaea cinxia genome, MelCinx1.0 (Jul, 2014)	Melitaea cinxia;glanville fritillary
MneLei                   	172.18.8.76	28152	EnsemblMetazoa	Mnemiopsis leidyi genome, MneLei_Aug2011 (Sep, 2011)	Mnemiopsis leidyi;sea walnut
Nvit_2.1                 	172.18.8.76	28153	EnsemblMetazoa	Nasonia vitripennis genome, Nvit_2.1 (Nov, 2012)	Nasonia vitripennis;parasitic wasp
ASM20922v1               	172.18.8.76	28154	EnsemblMetazoa	Nematostella vectensis genome, ASM20922v1 (Sep, 2007)	Nematostella vectensis;starlet sea anemone
Cameroon_v3              	172.18.8.76	28155	EnsemblMetazoa	Onchocerca volvulus genome, Cameroon_v3 (Nov, 2013)	Onchocerca volvulus;parasitic nematode
PhumU2                   	172.18.8.76	28156	EnsemblMetazoa	Pediculus humanus genome, PhumU2 (Nov, 2008)	Pediculus humanus;body louse
RproC1                   	172.18.8.76	28157	EnsemblMetazoa	Rhodnius prolixus genome, RproC1 (Dec, 2010)	Rhodnius prolixus;triatomid bug
ASM23792v2               	172.18.8.76	28158	EnsemblMetazoa	Schistosoma mansoni genome, ASM23792v2 (Apr, 2012)	Schistosoma mansoni;blood fluke
Si_gnG                   	172.18.8.76	28159	EnsemblMetazoa	Solenopsis invicta genome, Si_gnG (Feb, 2011)	Solenopsis invicta;red imported fire ant
Smar1                    	172.18.8.76	28160	EnsemblMetazoa	Strigamia maritima genome, Smar1 (Feb, 2013)	Strigamia maritima;european centipede
ASM23943v1               	172.18.8.76	28161	EnsemblMetazoa	Tetranychus urticae genome, ASM23943v1 (Nov, 2011)	Tetranychus urticae;two-spotted spider mite
Tcas3                    	172.18.8.76	28162	EnsemblMetazoa	Tribolium castaneum genome, Tcas3 (Feb, 2010)	Tribolium castaneum;red flour beetle
Tspiralis1               	172.18.8.76	28163	EnsemblMetazoa	Trichinella spiralis genome, Tspiralis1 (Mar, 2011)	Trichinella spiralis;trichina worm
ASM15027v1               	172.18.8.76	28164	EnsemblMetazoa	Trichoplax adhaerens genome, ASM15027v1 (Aug, 2006)	Trichoplax adhaerens
ZooNev1.0                	172.18.8.76	28165	EnsemblMetazoa	Zootermopsis nevadensis genome, ZooNev1.0 (Jun, 2014)	Zootermopsis nevadensis;dampwood termite
ASM34733v1               	172.18.8.75	28166	EnsemblPlants	Aegilops tauschii genome, ASM34733v1 (Dec, 2013)	Aegilops tauschii;tausch's goatgrass
AMTR1.0                  	172.18.8.75	28167	EnsemblPlants	Amborella trichopoda genome, AMTR1.0 (Jan, 2014)	Amborella trichopoda
Araly_v.1.0              	172.18.8.75	28168	EnsemblPlants	Arabidopsis lyrata genome, v.1.0 (Dec, 2008)	Arabidopsis lyrata;lyre-leaved rock-cress
TAIR10_en                	172.18.8.75	28169	EnsemblPlants	Arabidopsis thaliana genome, TAIR10 (Sep, 2010)	Arabidopsis thaliana;thale cress
Bradi_v1.0               	172.18.8.75	28170	EnsemblPlants	Brachypodium distachyon genome, v1.0 (Jan, 2009)	Brachypodium distachyon;purple false brome
Braol_v2.1               	172.18.8.75	28171	EnsemblPlants	Brassica oleracea genome, v2.1	Brassica oleracea;wild cabbage
IVFCAASv1                	172.18.8.75	28172	EnsemblPlants	Brassica rapa genome, IVFCAASv1 (Aug, 2009)	Brassica rapa ssp. pekinensis;chinese cabbage
Chlre_v3.1               	172.18.8.75	28173	EnsemblPlants	Chlamydomonas reinhardtii genome, v3.1 (Nov, 2007)	Chlamydomonas reinhardtii;green algae
ASM9120v1                	172.18.8.75	28174	EnsemblPlants	Cyanidioschyzon merolae genome, ASM9120v1 (Nov, 2008)	Cyanidioschyzon merolae;red alga
Soybn_V1.0               	172.18.8.75	28175	EnsemblPlants	Glycine max genome, V1.0 EnsemblPlants (Jan, 2010)	Glycine max;soybean
Soybn_V2.0               	172.18.8.75	28176	EnsemblPlants	Glycine max genome, v2.0 EnsemblPlants (Nov, 2015)	Glycine max;soybean
Horvu_v1                 	172.18.8.75	28177	EnsemblPlants	Hordeum vulgare genome, 082214v1 (Mar, 2012)	Hordeum vulgare;barley
Lperr_V1.4               	172.18.8.75	28178	EnsemblPlants	Leersia perrieri genome, Lperr_V1.4 (Mar, 2014)	Leersia perrieri
MedtrA17_4.0             	172.18.8.75	28179	EnsemblPlants	Medicago truncatula str. A17 genome, MedtrA17_4.0 (Jun, 2014)	Medicago truncatula str. A17;barrel medic
MA1                      	172.18.8.75	28180	EnsemblPlants	Musa acuminata genome, MA1 (Aug, 2012)	Musa acuminata;banana
Obart_v1.0               	172.18.8.75	28181	EnsemblPlants	Oryza barthii genome, Obart_v1.0 (Apr, 2014)	Oryza barthii;african wild rice
Orybr_v1.4b              	172.18.8.75	28182	EnsemblPlants	Oryza brachyantha genome, Oryza_brachyantha.v1.4b (May, 2011)	Oryza brachyantha;african wild rice
AGI1.1                   	172.18.8.75	28183	EnsemblPlants	Oryza glaberrima genome, AGI1.1 (May, 2011)	Oryza glaberrima;african wild rice
Orygl                    	172.18.8.75	28184	EnsemblPlants	Oryza glumaepatula genome, ALNU02000000 (Aug, 2013)	Oryza glumaepatula;brazilian wild rice
Orylo_v0117              	172.18.8.75	28185	EnsemblPlants	Oryza longistaminata genome, v0117-2013Aug (Aug, 2013)	Oryza longistaminata;longstamen rice
Oryme_v1.3               	172.18.8.75	28186	EnsemblPlants	Oryza meridionalis genome, Oryza_meridionalis_v1.3 (Oct, 2014)	Oryza meridionalis;australian wild rice
Oryni                    	172.18.8.75	28187	EnsemblPlants	Oryza nivara genome, AWHD00000000 (Aug, 2013)	Oryza nivara;indian wild rice
Orypu                    	172.18.8.75	28188	EnsemblPlants	Oryza punctata genome, AVCL00000000 (Aug, 2013)	Oryza punctata;red rice
PRJEB4137                	172.18.8.75	28189	EnsemblPlants	Oryza rufipogon genome, PRJEB4137 (Aug, 2013)	Oryza rufipogon;brownbeard rice
ASM465v1                 	172.18.8.75	28190	EnsemblPlants	Oryza sativa Indica genome, ASM465v1 (Jan, 2005)	Oryza sativa ssp. indica;rice
ASM9206v1                	172.18.8.75	28191	EnsemblPlants	Ostreococcus lucimarinus genome, ASM9206v1 (Jan, 2011)	Ostreococcus lucimarinus
ASM242v1                 	172.18.8.75	28192	EnsemblPlants	Physcomitrella patens genome, ASM242v1 (Jul, 2006)	Physcomitrella patens;moss
Poptr_JGI2.0             	172.18.8.75	28193	EnsemblPlants	Populus trichocarpa genome, JGI2.0 (Jan, 2010)	Populus trichocarpa;western balsam poplar
Prupe1_0                 	172.18.8.75	28194	EnsemblPlants	Prunus persica genome, Prupe1_0 (Mar, 2013)	Prunus persica;peach
Selml_v1.0               	172.18.8.75	28195	EnsemblPlants	Selaginella moellendorffii genome, v1.0 (May, 2011)	Selaginella moellendorffii;spikemoss
Setit_JGIv2.0            	172.18.8.75	28196	EnsemblPlants	Setaria italica genome, JGIv2.0 (Jan, 2012)	Setaria italica;foxtail millet
SL2.50                   	172.18.8.75	28197	EnsemblPlants	Solanum lycopersicum str. Heinz 1706 genome, SL2.50 (Oct, 2014)	Solanum lycopersicum str. Heinz 1706;tomato
SolTub_3.0               	172.18.8.75	28198	EnsemblPlants	Solanum tuberosum genome, SolTub_3.0 (May, 2011)	Solanum tuberosum;potato
Sorbi1                   	172.18.8.75	28199	EnsemblPlants	Sorghum bicolor genome, Sorbi1 (Dec, 2007)	Sorghum bicolor;sorghum
Sorbi3                   	172.18.8.75	28200	EnsemblPlants	Sorghum bicolor genome, NCBIv3 (Jun, 2017)	Sorghum bicolor;sorghum
Thecc_20110822           	172.18.8.75	28201	EnsemblPlants	Theobroma cacao genome, Theobroma_cacao_20110822 (May, 2014)	Theobroma cacao;cacao
IWGSC1.0                 	172.18.8.75	28202	EnsemblPlants	Triticum aestivum genome, IWGSC1.0+popseq (Nov, 2014)	Triticum aestivum;wheat
ASM34745v1               	172.18.8.75	28203	EnsemblPlants	Triticum urartu genome, ASM34745v1 (Apr, 2013)	Triticum urartu;red wild einkorn
IGGP_12x                 	172.18.8.75	28204	EnsemblPlants	Vitis vinifera genome, IGGP_12x (Jun, 2011)	Vitis vinifera;grape
AGPv3                    	172.18.8.75	28205	EnsemblPlants	Zea mays genome, AGPv3 (Apr, 2013)	Zea mays;maize;corn
AGPv4                    	172.18.8.72	28206	EnsemblPlants	Zea mays genome, AGPv4 (Mar, 2016)	Zea mays;maize;corn
Cmo_v1                   	172.18.8.72	28207	    	Cucurbita moschata (Rifu) genome, v1	Cucurbita moschata;pumpkin;squash
Zunla-1_v2.0             	172.18.8.72	28208	    	Capsicum annuum (Zunla-1) genome, release 2.0	Capsicum annuum;pepper
Chiltepin_v2.0           	172.18.8.72	28209	    	Capsicum annuum var. glabriusculum (Chiltepin) genome, release 2.0	Capsicum annuum var. glabriusculum;pepper
CM3.6.1                  	172.18.8.72	28210	    	Cucumis melo genome, v3.6.1 (Jul, 2017)	Cucumis melo;melon
SME_r2.5.1               	172.18.8.72	28211	    	Solanum melongena genome, r2.5.1	Solanum melongena;eggplant
Csativus_Gy14            	172.18.8.72	28212	    	Cucumis sativus (Gy14) genome, v1	Cucumis sativus;cucumber
Cp4.1                    	172.18.8.72	28213	    	Cucurbita pepo subsp. pepo (Zucchini) genome, v4.1	Cucurbita pepo subsp. pepo;zucchini
WCG_v1                   	172.18.8.72	28214	    	Citrullus lanatus subsp. vulgaris (Charleston Gray) genome, v1	Citrullus lanatus subsp. vulgaris;watermelon
W97103_v1                	172.18.8.72	28215	    	Citrullus lanatus subsp. vulgaris (97103) genome, v1	Citrullus lanatus subsp. vulgaris;watermelon
HanXRQr1.0               	172.18.8.72	28216	    	Helianthus annuus genome, HanXRQr1.0 (Dec, 2015)	Helianthus annuus;sunflower
Xenla7                   	172.18.8.72	28217	Xenbase	Xenopus laevis genome, JGI 7.1/Xenla7 (Dec, 2013)	Xenopus laevis;african clawed frog
TAIR10                   	172.18.8.72	28218	    	Arabidopsis thaliana genome, TAIR10 (Nov, 2010)	Arabidopsis thaliana;thale cress
rice                     	172.18.8.72	28219	RAP-DB	Rice genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)	Oryza sativa ssp. japonica;rice
sorBic                   	172.18.8.72	28220	    	Sorghum genome, Sorghum bicolor v2.1 (May, 2013)	Sorghum bicolor
bmor1                    	172.18.8.76	28221	Ensembl	Silkworm genome, Bmor1 (Apr, 2008)	Bombyx mori
pombe                    	172.18.8.76	28222	EnsemblFungi	Schizosaccharomyces pombe (972h-) genome, ASM294v2 (Nov, 2007)	Schizosaccharomyces pombe;fission yeast
MG8                      	172.18.8.77	28223	EnsemblFungi	Magnaporthe oryzae (70-15) genome, MG8 (Sep, 2011)	Magnaporthe oryzae;rice blast fungus
Xentr7                   	172.18.8.77	28225	Xenbase  	Xenopus tropicalis genome, XenBase/JGI 7.1	Xenopus tropicalis;western clawed frog
Xentr8                   	172.18.8.77	28226	Xenbase  	Xenopus tropicalis genome, XenBase/JGI 8.0	Xenopus tropicalis;western clawed frog
Xentr9                   	172.18.8.77	28227	Xenbase  	Xenopus tropicalis genome, XenBase/JGI 9.0	Xenopus tropicalis;western clawed frog
Xenla9                   	172.18.8.77	28228	Xenbase  	Xenopus laevis genome, XenBase/JGI 9.1	Xenopus laevis;african clawed frog
Xenla9.2                 	172.18.8.77	28888	Xenbase  	Xenopus laevis genome, XenBase/NCBI 9.2	Xenopus laevis;african clawed frog
Xentr10.0                	172.18.8.77	28889	Xenbase  	Xenopus tropicalis genome, XenBase/UCB 10.0	Xenopus tropicalis;western clawed frog
macaque_CE_1             	172.18.8.77	28229	         	Crab-eating macaque genome, CE_1.0 (Jul, 2011)	Macaca fascicularis
KH                       	172.18.8.77	28231	         	Ciona intestinalis genome, KH (Jul, 2008)	Ciona intestinalis;transparent sea squirt
Spur_v3.1                	172.18.8.77	28232	SpBase   	S. purpuratus genome, Spur_v3.1 (Jun, 2011)	Strongylocentrotus purpuratus;purple sea urchin
h7                       	172.18.8.77	28233	NCBI     	Hydra genome, h7 (Aug, 2008)	Hydra vulgaris
Hydra_RP_1.0             	172.18.8.77	28234	NCBI     	Hydra genome, Hydra_RP_1.0 (Oct, 2009)	Hydra vulgaris
Brana_v4.1               	172.18.8.77	28235	Genoscope	Brassica napus genome, Genoscope v4.1 (Aug, 2014)	Brassica napus
lotus_r3.0               	172.18.8.77	28236	Kazusa   	Lotus japonicus genome, build 3.0 (Aug, 2015)	Lotus japonicus;japanese trefoil
Niben_v1.0.1             	172.18.8.77	28237	         	Nicotiana benthamiana genome, v1.0.1 (Jul, 2014)	Nicotiana benthamiana;tobacco
adzuki_ver3              	172.18.8.77	28238	         	Vigna angularis genome, ver3 (Nov, 2011)	Vigna angularis;adzuki bean
RSA_r1.0                 	172.18.8.77	28239	Kazusa   	Raphanus sativus genome, RSA_r1.0 (May, 2014)	Raphanus sativus;radish
MesAur1.0                	172.18.8.77	28240	         	Golden hamster genome, MesAur1.0 (Mar, 2013)	Mesocricetus auratus;golden hamster
ASM644v2                 	172.18.8.76	28241	EnsemblFungi	Debaryomyces hansenii (CBS767) genome, ASM644v2 (Feb, 2015)	Debaryomyces hansenii;marine yeast
ASM251v1                 	172.18.8.76	28242	EnsemblFungi	Kluyveromyces lactis genome, ASM251v1 (Feb, 2015)	Kluyveromyces lactis;kluyveromyces yeast
ASM252v1                 	172.18.8.76	28243	EnsemblFungi	Yarrowia lipolytica genome, ASM252v1 (May, 2012)	Yarrowia lipolytica;oleaginous yeast
RR                       	172.18.8.76	28244	EnsemblFungi	Fusarium graminearum genome, RR (Nov, 2014)	Fusarium graminearum;Gibberella zeae;wheat head blight fungus
CC3                      	172.18.8.72	28245	EnsemblFungi	Coprinopsis cinerea (okayama7#130) genome, CC3 (Aug, 2014)	Coprinopsis cinerea;Hormographiella aspergillata;inky cap fungus
KM1777_03                	172.18.8.76	28738	EnsemblFungi	Kluyveromyces marxianus genome, KM1777_03 (Oct, 2014)	Kluyveromyces marxianus;kluyveromyces yeast
PicPas_Mar2011           	172.18.8.76	28739	EnsemblFungi	Komagataella phaffii CBS 7435 genome, PicPas_Mar2011 (Oct, 2016)	Komagataella phaffii;Pichia pastoris;methylotrophic yeast
BX                       	172.18.8.76	28246	         	Nicotiana tabacum (BX) genome, Ntab-BX (2014)	Nicotiana tabacum;tobacco
RHOziaDV1.0              	172.18.8.76	28247	NCBI     	Rhodotorula toruloides (NP11) genome, RHOziaDV1.0 (Apr, 2013)	Rhodotorula toruloides;oleaginous yeast
Tetth                    	172.18.8.76	28248	TGD      	Tetrahymena thermophila genome (Jun, 2014)	Tetrahymena thermophila
Tetbo                    	172.18.8.76	28249	TGD      	Tetrahymena borealis genome (Oct, 2012)	Tetrahymena borealis
Tetel                    	172.18.8.76	28250	TGD      	Tetrahymena elliotti genome (Oct, 2012)	Tetrahymena elliotti
Tetma                    	172.18.8.76	28251	TGD      	Tetrahymena malaccensis genome (Oct, 2012)	Tetrahymena malaccensis
img1                     	172.18.8.72	28252	IchDB    	Ichthyophthirius multifiliis macronuclear genome	Ichthyophthirius multifiliis;ciliate
stylo                    	172.18.8.72	28253	StyloDB  	Stylonychia lemnae macronuclear genome	Stylonychia lemnae;ciliate
oxy                      	172.18.8.72	28254	OxyDB    	Oxytricha trifallax macronuclear genome	Oxytricha trifallax;ciliate
oxymic                   	172.18.8.72	28255	OxyDB    	Oxytricha trifallax micronuclear genome	Oxytricha trifallax;ciliate
A_nidulans_FGSC_A4       	172.18.8.72	28256	AspGD    	Aspergillus nidulans (FGSC A4) genome, s10-m04-r06 (Apr, 2016)	Aspergillus nidulans;Emericella nidulans
A_fumigatus_Af293        	172.18.8.72	28257	AspGD    	Aspergillus fumigatus (Af293) genome, s03-m05-r06 (Apr, 2016)	Aspergillus fumigatus;Neosartorya fumigata
C_glabrata_CBS138        	172.18.8.72	28258	CGD      	Candida glabrata (CBS138) genome, s02-m07-r08 (Jun, 2016)	Candida glabrata;Torulopsis glabrata
C_albicans_SC5314        	172.18.8.72	28259	CGD      	Candida albicans (SC5314) genome, Assembly 21, A21-s02-m09-r10 (Feb, 2016)	Candida albicans
JCVI_PMFA1_2.0           	172.18.8.72	28260	NCBI     	Penicillium marneffei (ATCC 18224) genome, JCVI-PMFA1-2.0 (Oct, 2008)	Penicillium marneffei;Talaromyces marneffei
JRGv1                    	172.18.8.72	28261	ToMMo    	Human Japanese Reference Genome, JRGv1 (Aug, 2016)	Homo sapiens
JRGv2                    	172.18.8.72	28263	ToMMo    	Human Japanese Reference Genome, JRGv2 (Jun, 2017)	Homo sapiens
MSMv3                    	172.18.8.72	28265	         	Mouse genome, MSMv3	Mus musculus
JF1v2                    	172.18.8.72	28266	         	Mouse genome, JF1v2	Mus musculus
YOKOZUNA-1               	172.18.8.72	28267	         	Ramazzottius variornatus (YOKOZUNA-1) genome (Sep, 2016)	Ramazzottius variornatus;tardigrade;water bear
ASM15095v2               	172.18.8.72	28268	EnsemblProtists	Phaeodactylum tricornutum genome, ASM15095v2 (Feb, 2010)	Phaeodactylum tricornutum;diatom
ASM14940v2               	172.18.8.72	28269	EnsemblProtists	Thalassiosira pseudonana genome, ASM14940v2 (May, 2014)	Thalassiosira pseudonana;diatom
asagao                   	172.18.8.72	28270	         	Ipomoea nil (Tokyo Kokei Standard; TKS) genome (Sep, 2016)	Ipomoea nil;Pharbitis nil;japanese morning glory
malus_x_domestica_v1.0p  	172.18.8.72	28271	         	Malus domestica genome, v1.0p (Aug, 2012)	Malus domestica;apple
fragaria_vesca_v2.0.a1   	172.18.8.72	28272	         	Fragaria vesca genome, v2.0.a1 (Dec, 2014)	Fragaria vesca;strawberry
Brapa_v1.5               	172.18.8.72	28273	         	Brassica rapa genome, v1.5 (May, 2013)	Brassica rapa ssp. pekinensis;chinese cabbage
Bomo_silkbase            	172.18.8.72	28274	SilkBase 	Silkworm genome, SilkBase assembly (Nov, 2016)	Bombyx mori
SL2.4                    	172.18.8.72	28275	         	Solanum lycopersicum genome, SL2.40 (Jan, 2011)	Solanum lycopersicum;tomato
SL3.0                    	172.18.8.72	28276	         	Solanum lycopersicum genome, SL3.00 (Feb, 2017)	Solanum lycopersicum;tomato
ChineseLong_v2           	172.18.8.72	28277	         	Cucumis sativus (Chinese long) genome, v2	Cucumis sativus;cucumber
PI183967                 	172.18.8.72	28278	         	Cucumis sativus (PI 183967) genome	Cucumis sativus;cucumber
CM3.5.1                  	172.18.8.72	28279	         	Cucumis melo genome, v3.5.1 (Oct, 2013)	Cucumis melo;melon
A_oryzae_RIB40           	172.18.8.72	28280	AspGD    	Aspergillus oryzae (RIB40) genome, s01-m09-r03 (Oct, 2015)	Aspergillus oryzae;koji
A_chinensis_Hongyang     	172.18.8.72	28281	         	Actinidia chinensis genome	Actinidia chinensis;golden kiwi;kiwifruit
ASM24337v1               	172.18.8.72	28282	EnsemblFungi	Torulaspora delbrueckii genome, ASM24337v1 (Feb, 2015)	Torulaspora delbrueckii;yeast
Aros_1.0                 	172.18.8.72	28283	NCBI     	Athalia rosae genome, Aros_1.0 (Mar, 2013)	Athalia rosae;turnip sawfly;coleseed sawfly
Mpolymorpha_3.1          	172.18.8.72	28284	         	Marchantia polymorpha genome, JGI 3.1	Marchantia polymorpha;liverwort
Ccanephora_1.0           	172.18.8.72	28285	         	Coffea canephora genome, v1.0	Coffea canephora;coffee
AaegL5                   	172.18.8.72	28000	VectorBase	Aedes aegypti genome, AaegL5 (Jun, 2017)	Aedes aegypti;yellow fever mosquito
AaloF1                   	172.18.8.72	28001	VectorBase	Aedes albopictus genome, AaloF1 (Nov, 2015)	Aedes albopictus;asian tiger mosquito;forest mosquito
GCA_003118565.1          	172.18.8.72	28847	NCBI     	Paroedura picta genome, Ppicta_assembly_v1 (Mar, 2018)	Paroedura picta;madagascar ground gecko;ocelot gecko
GCA_003118565.2          	172.18.8.72	28887	NCBI     	Paroedura picta genome, Ppicta_v2.0 (Sep, 2021)	Paroedura picta;madagascar ground gecko;ocelot gecko
AspL_2604                	172.18.8.72	28013	EnsemblFungi	Aspergillus luchuensis str. RIB 2604 genome, AspL_2604	Aspergillus luchuensis;black koji
Akaw_assembly01          	172.18.8.72	28014	NCBI     	Aspergillus kawachii genome, IFO 4308 (Nov, 2011)	Aspergillus kawachii;white koji
Ppatens_251_v3           	172.18.8.74	28287	Phytozome	Physcomitrella patens genome, v3.0 (Oct, 2007)	Physcomitrella patens;moss
Smoellendorffii_91_v1    	172.18.8.74	28288	Phytozome	Selaginella moellendorffii genome, v1.0 (Dec, 2007)	Selaginella moellendorffii;spikemoss
Creinhardtii_281_v5_5    	172.18.8.74	28289	Phytozome	Chlamydomonas reinhardtii genome, v5.5 (May, 2014)	Chlamydomonas reinhardtii;green algae
Olucimarinus_231_v2      	172.18.8.74	28290	Phytozome	Ostreococcus lucimarinus genome, v2.0 (Jan, 2011)	Ostreococcus lucimarinus
Cgrandiflora_v1          	172.18.8.74	28291	Phytozome	Capsella grandiflora genome, v1.1	Capsella grandiflora
Crubella_v1              	172.18.8.74	28292	Phytozome	Capsella rubella genome, v1.0	Capsella rubella;red shepherd's purse
Cpapaya_r.Dec2008        	172.18.8.74	28293	Phytozome	Carica papaya genome, ASGPBv0.4	Carica papaya;papaya
Cclementina_v1           	172.18.8.74	28294	Phytozome	Citrus clementina genome, v1.0	Citrus clementina;clementine
Csinensis_v1             	172.18.8.74	28295	Phytozome	Citrus sinensis genome, v1.1	Citrus sinensis;sweet orange
CsubellipsoideaC169_v2.0 	172.18.8.74	28296	Phytozome	Coccomyxa subellipsoidea C-169 genome, v2.0	Coccomyxa subellipsoidea
Csativus_v1              	172.18.8.74	28297	Phytozome	Cucumis sativus genome, v1.0	Cucumis sativus;cucumber
Dcarota_v2.0             	172.18.8.72	28298	Phytozome	Daucus carota genome, v2.0	Daucus carota;carrot
Egrandis_v2.0            	172.18.8.74	28299	Phytozome	Eucalyptus grandis genome, v2.0	Eucalyptus grandis;eucalyptus
Fvesca_v1.1              	172.18.8.74	28300	Phytozome	Fragaria vesca genome, v1.1	Fragaria vesca;strawberry
Graimondii_v2.0          	172.18.8.74	28301	Phytozome	Gossypium raimondii genome, v2.1	Gossypium raimondii;cotton
Lusitatissimum_BGIv1.0   	172.18.8.74	28302	Phytozome	Linum usitatissimum genome, v1.0	Linum usitatissimum;flax
Mdomestica_v1.0          	172.18.8.74	28303	Phytozome	Malus domestica genome, v1.0	Malus domestica;apple
Mesculenta_v6            	172.18.8.74	28304	Phytozome	Manihot esculenta genome, v6.1	Manihot esculenta;cassava
MpusillaCCMP1545_v3.0    	172.18.8.74	28305	Phytozome	Micromonas pusilla CCMP1545 genome, v3.0	Micromonas pusilla;picoplanktonic green alga
MpusillaRCC299_v3.0      	172.18.8.74	28306	Phytozome	Micromonas sp. RCC299 genome, v3.0	Micromonas pusilla;picoplanktonic green alga
Mguttatus_v2.0           	172.18.8.74	28307	Phytozome	Mimulus guttatus genome, v2.0	Mimulus guttatus;monkey flower
Ppersica_v2.0            	172.18.8.74	28308	Phytozome	Prunus persica genome, v2.1	Prunus persica;peach
Rcommunis_TIGR.0.1       	172.18.8.74	28309	Phytozome	Ricinus communis genome, v0.1	Ricinus communis;castor bean
Spolyrhiza_v1            	172.18.8.74	28310	Phytozome	Spirodela polyrhiza genome, v2	Spirodela polyrhiza;giant duckweed
Vcarteri_v2              	172.18.8.74	28311	Phytozome	Volvox carteri genome, v2.0	Volvox carteri;green alga
Ptrichocarpa_v3.0        	172.18.8.74	28312	Phytozome	Populus trichocarpa genome, v3.0	Populus trichocarpa;western balsam poplar
GCA_000009725.1          	172.18.8.72	28313	CyanoBase	Synechocystis sp. PCC 6803 genome, GCA_000009725.1	
GCA_000009705.1          	172.18.8.72	28314	CyanoBase	Nostoc sp. PCC 7120 genome, GCA_000009705.1	
GCA_000011345.1          	172.18.8.72	28315	CyanoBase	Thermosynechococcus elongatus BP-1 genome, GCA_000011345.1	
GCA_000010625.1          	172.18.8.72	28316	CyanoBase	Microcystis aeruginosa NIES-843 genome, GCA_000010625.1	
GCA_000011385.1          	172.18.8.72	28317	CyanoBase	Gloeobacter violaceus PCC 7421 genome, GCA_000011385.1	
GCA_000006985.1          	172.18.8.72	28318	CyanoBase	Chlorobium tepidum TLS genome, GCA_000006985.1	
GCA_000007925.1          	172.18.8.72	28319	CyanoBase	Prochlorococcus marinus subsp. marinus str. CCMP1375 genome, GCA_000007925.1	
GCA_000010065.1          	172.18.8.72	28320	CyanoBase	Synechococcus elongatus PCC 6301 genome, GCA_000010065.1	
GCA_000011465.1          	172.18.8.72	28321	CyanoBase	Prochlorococcus marinus subsp. pastoris str. CCMP1986 genome, GCA_000011465.1	
GCA_000011485.1          	172.18.8.72	28322	CyanoBase	Prochlorococcus marinus str. MIT 9313 genome, GCA_000011485.1	
GCA_000012465.1          	172.18.8.72	28323	CyanoBase	Prochlorococcus marinus str. NATL2A genome, GCA_000012465.1	
GCA_000012505.1          	172.18.8.72	28324	CyanoBase	Synechococcus sp. CC9902 genome, GCA_000012505.1	
GCA_000012525.1          	172.18.8.72	28325	CyanoBase	Synechococcus elongatus PCC 7942 genome, GCA_000012525.1	
GCA_000012625.1          	172.18.8.72	28326	CyanoBase	Synechococcus sp. CC9605 genome, GCA_000012625.1	
GCA_000012645.1          	172.18.8.72	28327	CyanoBase	Prochlorococcus marinus str. MIT 9312 genome, GCA_000012645.1	
GCA_000013205.1          	172.18.8.72	28328	CyanoBase	Synechococcus sp. JA-3-3Ab genome, GCA_000013205.1	
GCA_000013225.1          	172.18.8.72	28329	CyanoBase	Cyanobacteria bacterium Yellowstone B-Prime genome, GCA_000013225.1	
GCA_000014265.1          	172.18.8.72	28330	CyanoBase	Trichodesmium erythraeum IMS101 genome, GCA_000014265.1	
GCA_000014585.1          	172.18.8.72	28331	CyanoBase	Synechococcus sp. CC9311 genome, GCA_000014585.1	
GCA_000015645.1          	172.18.8.72	28332	CyanoBase	Prochlorococcus marinus str. AS9601 genome, GCA_000015645.1	
GCA_000015665.1          	172.18.8.72	28333	CyanoBase	Prochlorococcus marinus str. MIT 9515 genome, GCA_000015665.1	
GCA_000015685.1          	172.18.8.72	28334	CyanoBase	Prochlorococcus marinus str. NATL1A genome, GCA_000015685.1	
GCA_000015705.1          	172.18.8.72	28335	CyanoBase	Prochlorococcus marinus str. MIT 9303 genome, GCA_000015705.1	
GCA_000015965.1          	172.18.8.72	28336	CyanoBase	Prochlorococcus marinus str. MIT 9301 genome, GCA_000015965.1	
GCA_000017845.1          	172.18.8.72	28337	CyanoBase	Cyanothece sp. ATCC 51142 genome, GCA_000017845.1	
GCA_000018065.1          	172.18.8.72	28338	CyanoBase	Prochlorococcus marinus str. MIT 9215 genome, GCA_000018065.1	
GCA_000018105.1          	172.18.8.72	28339	CyanoBase	Acaryochloris marina MBIC11017 genome, GCA_000018105.1	
GCA_000018585.1          	172.18.8.72	28340	CyanoBase	Prochlorococcus marinus str. MIT 9211 genome, GCA_000018585.1	
GCA_000019485.1          	172.18.8.72	28341	CyanoBase	Synechococcus sp. PCC 7002 genome, GCA_000019485.1	
GCA_000020025.1          	172.18.8.72	28342	CyanoBase	Nostoc punctiforme PCC 73102 genome, GCA_000020025.1	
GCA_000021805.1          	172.18.8.72	28343	CyanoBase	Cyanothece sp. PCC 8801 genome, GCA_000021805.1	
GCA_000021825.1          	172.18.8.72	28344	CyanoBase	Cyanothece sp. PCC 7424 genome, GCA_000021825.1	
GCA_000022045.1          	172.18.8.72	28345	CyanoBase	Cyanothece sp. PCC 7425 genome, GCA_000022045.1	
GCA_000024045.1          	172.18.8.72	28346	CyanoBase	Cyanothece sp. PCC 8802 genome, GCA_000024045.1	
GCA_000025125.1          	172.18.8.72	28347	CyanoBase	Candidatus Atelocyanobacterium thalassa isolate ALOHA genome, GCA_000025125.1	
GCA_000063505.1          	172.18.8.72	28348	CyanoBase	Synechococcus sp. WH 7803 genome, GCA_000063505.1	
GCA_000063525.1          	172.18.8.72	28349	CyanoBase	Synechococcus sp. RCC307 genome, GCA_000063525.1	
GCA_000147335.1          	172.18.8.72	28350	CyanoBase	Cyanothece sp. PCC 7822 genome, GCA_000147335.1	
GCA_000153045.1          	172.18.8.72	28351	CyanoBase	Synechococcus sp. WH 5701 genome, GCA_000153045.1	
GCA_000153065.1          	172.18.8.72	28352	CyanoBase	Synechococcus sp. RS9917 genome, GCA_000153065.1	
GCA_000153285.1          	172.18.8.72	28353	CyanoBase	Synechococcus sp. WH 7805 genome, GCA_000153285.1	
GCA_000153805.1          	172.18.8.72	28354	CyanoBase	Synechococcus sp. BL107 genome, GCA_000153805.1	
GCA_000153825.1          	172.18.8.72	28355	CyanoBase	Synechococcus sp. RS9916 genome, GCA_000153825.1	
GCA_000155555.1          	172.18.8.72	28356	CyanoBase	Coleofasciculus chthonoplastes PCC 7420 genome, GCA_000155555.1	
GCA_000155595.1          	172.18.8.72	28357	CyanoBase	Synechococcus sp. PCC 7335 genome, GCA_000155595.1	
GCA_000155635.1          	172.18.8.72	28358	CyanoBase	Cyanobium sp. PCC 7001 genome, GCA_000155635.1	
GCA_000158595.1          	172.18.8.72	28359	CyanoBase	Prochlorococcus marinus str. MIT 9202 genome, GCA_000158595.1	
GCA_000161795.2          	172.18.8.72	28360	CyanoBase	Synechococcus sp. WH 8109 genome, GCA_000161795.2	
GCA_000167195.1          	172.18.8.72	28361	CyanoBase	Crocosphaera watsonii WH 8501 genome, GCA_000167195.1	
GCA_000169095.1          	172.18.8.72	28362	CyanoBase	Lyngbya sp. PCC 8106 genome, GCA_000169095.1	
GCA_000169135.1          	172.18.8.72	28363	CyanoBase	Nodularia spumigena CCY9414 genome, GCA_000169135.1	
GCA_000169335.1          	172.18.8.72	28364	CyanoBase	Cyanothece sp. CCY0110 genome, GCA_000169335.1	
GCA_000173555.1          	172.18.8.72	28365	CyanoBase	Arthrospira maxima CS-328 genome, GCA_000173555.1	
GCA_000175415.3          	172.18.8.72	28366	CyanoBase	Arthrospira platensis str. Paraca genome, GCA_000175415.3	
GCA_000175835.1          	172.18.8.72	28367	CyanoBase	Cylindrospermopsis raciborskii CS-505 genome, GCA_000175835.1	
GCA_000175855.1          	172.18.8.72	28368	CyanoBase	Raphidiopsis brookii D9 genome, GCA_000175855.1	
GCA_000176895.2          	172.18.8.72	28369	CyanoBase	Arthrospira sp. PCC 8005 genome, GCA_000176895.2	
GCA_000179235.1          	172.18.8.72	28370	CyanoBase	Synechococcus sp. CB0101 genome, GCA_000179235.1	
GCA_000179255.1          	172.18.8.72	28371	CyanoBase	Synechococcus sp. CB0205 genome, GCA_000179255.1	
GCA_000180455.1          	172.18.8.72	28372	CyanoBase	Oscillatoria sp. PCC 6506 genome, GCA_000180455.1	
GCA_000195775.1          	172.18.8.72	28373	CyanoBase	Rhodopseudomonas palustris CGA009 genome, GCA_000195775.1	
GCA_000195975.1          	172.18.8.72	28374	CyanoBase	Synechococcus sp. WH 8102 genome, GCA_000195975.1	
GCA_000196515.1          	172.18.8.72	28375	CyanoBase	Nostoc azollae 0708 genome, GCA_000196515.1	
GCA_000204075.1          	172.18.8.72	28376	CyanoBase	Anabaena variabilis ATCC 29413 genome, GCA_000204075.1	
GCA_000210375.1          	172.18.8.72	28377	CyanoBase	Arthrospira platensis NIES-39 genome, GCA_000210375.1	
GCA_000211815.1          	172.18.8.72	28378	CyanoBase	Moorea producens 3L genome, GCA_000211815.1	
GCA_000214075.2          	172.18.8.72	28379	CyanoBase	Microcoleus vaginatus FGP-2 genome, GCA_000214075.2	
GCA_000218705.1          	172.18.8.72	28380	CyanoBase	Prochlorococcus marinus bv. HNLC1 genome, GCA_000218705.1	
GCA_000218745.1          	172.18.8.72	28381	CyanoBase	Prochlorococcus marinus bv. HNLC2 genome, GCA_000218745.1	
GCA_000230675.2          	172.18.8.72	28382	CyanoBase	Synechococcus sp. WH 8016 genome, GCA_000230675.2	
GCA_000231365.2          	172.18.8.72	28383	CyanoBase	Fischerella sp. JSC-11 genome, GCA_000231365.2	
GCA_000231425.3          	172.18.8.72	28384	CyanoBase	Cyanothece sp. ATCC 51472 genome, GCA_000231425.3	
GCA_000235665.2          	172.18.8.72	28385	CyanoBase	Crocosphaera watsonii WH 0003 genome, GCA_000235665.2	
GCA_000238775.2          	172.18.8.72	28386	CyanoBase	Acaryochloris sp. CCMEE 5410 genome, GCA_000238775.2	
GCA_000252425.1          	172.18.8.72	28387	CyanoBase	Prochloron didemni P2-Fiji genome, GCA_000252425.1	
GCA_000252465.1          	172.18.8.72	28388	CyanoBase	Prochloron didemni P3-Solomon genome, GCA_000252465.1	
GCA_000252485.1          	172.18.8.72	28389	CyanoBase	Prochloron didemni P4-Papua_New_Guinea genome, GCA_000252485.1	
GCA_000270265.1          	172.18.8.72	28390	CyanoBase	Synechocystis sp. PCC 6803 genome, GCA_000270265.1	
GCA_000284135.1          	172.18.8.72	28391	CyanoBase	Synechocystis sp. PCC 6803 substr. GT-I genome, GCA_000284135.1	
GCA_000284215.1          	172.18.8.72	28392	CyanoBase	Synechocystis sp. PCC 6803 substr. PCC-N genome, GCA_000284215.1	
GCA_000284455.1          	172.18.8.72	28393	CyanoBase	Synechocystis sp. PCC 6803 substr. PCC-P genome, GCA_000284455.1	
GCA_000291785.1          	172.18.8.72	28394	CyanoBase	Prochlorococcus sp. W4 genome, GCA_000291785.1	
GCA_000291805.1          	172.18.8.72	28395	CyanoBase	Prochlorococcus sp. W7 genome, GCA_000291805.1	
GCA_000291825.1          	172.18.8.72	28396	CyanoBase	Prochlorococcus sp. W8 genome, GCA_000291825.1	
GCA_000291845.1          	172.18.8.72	28397	CyanoBase	Prochlorococcus sp. W10 genome, GCA_000291845.1	
GCA_000291865.1          	172.18.8.72	28398	CyanoBase	Prochlorococcus sp. W6 genome, GCA_000291865.1	
GCA_000291885.1          	172.18.8.72	28399	CyanoBase	Prochlorococcus sp. W2 genome, GCA_000291885.1	
GCA_000291905.1          	172.18.8.72	28400	CyanoBase	Prochlorococcus sp. W3 genome, GCA_000291905.1	
GCA_000291925.1          	172.18.8.72	28401	CyanoBase	Prochlorococcus sp. W9 genome, GCA_000291925.1	
GCA_000291945.1          	172.18.8.72	28402	CyanoBase	Prochlorococcus sp. W11 genome, GCA_000291945.1	
GCA_000291965.1          	172.18.8.72	28403	CyanoBase	Prochlorococcus sp. W12 genome, GCA_000291965.1	
GCA_000291985.1          	172.18.8.72	28404	CyanoBase	Prochlorococcus sp. W5 genome, GCA_000291985.1	
GCA_000297435.1          	172.18.8.72	28405	CyanoBase	Microcystis sp. T1-4 genome, GCA_000297435.1	
GCA_000300115.1          	172.18.8.72	28406	CyanoBase	Tolypothrix sp. PCC 7601 genome, GCA_000300115.1	
GCA_000307915.1          	172.18.8.72	28407	CyanoBase	Arthrospira platensis C1 genome, GCA_000307915.1	
GCA_000307995.2          	172.18.8.72	28408	CyanoBase	Microcystis aeruginosa PCC 9432 genome, GCA_000307995.2	
GCA_000309385.1          	172.18.8.72	28409	CyanoBase	Nodosilinea nodulosa PCC 7104 genome, GCA_000309385.1	
GCA_000309945.1          	172.18.8.72	28410	CyanoBase	Oscillatoriales cyanobacterium JSC-12 genome, GCA_000309945.1	
GCA_000312165.1          	172.18.8.72	28411	CyanoBase	Microcystis aeruginosa PCC 9717 genome, GCA_000312165.1	
GCA_000312185.1          	172.18.8.72	28412	CyanoBase	Microcystis aeruginosa PCC 9443 genome, GCA_000312185.1	
GCA_000312205.1          	172.18.8.72	28413	CyanoBase	Microcystis aeruginosa PCC 7941 genome, GCA_000312205.1	
GCA_000312225.1          	172.18.8.72	28414	CyanoBase	Microcystis aeruginosa PCC 9807 genome, GCA_000312225.1	
GCA_000312245.1          	172.18.8.72	28415	CyanoBase	Microcystis aeruginosa PCC 9808 genome, GCA_000312245.1	
GCA_000312265.1          	172.18.8.72	28416	CyanoBase	Microcystis aeruginosa PCC 9809 genome, GCA_000312265.1	
GCA_000312285.1          	172.18.8.72	28417	CyanoBase	Microcystis aeruginosa PCC 9701 genome, GCA_000312285.1	
GCA_000312705.1          	172.18.8.72	28418	CyanoBase	Anabaena sp. 90 genome, GCA_000312705.1	
GCA_000312725.1          	172.18.8.72	28419	CyanoBase	Microcystis aeruginosa PCC 9806 genome, GCA_000312725.1	
GCA_000314005.1          	172.18.8.72	28420	CyanoBase	Spirulina subsalsa PCC 9445 genome, GCA_000314005.1	
GCA_000315565.1          	172.18.8.72	28421	CyanoBase	Mastigocladopsis repens PCC 10914 genome, GCA_000315565.1	
GCA_000315585.1          	172.18.8.72	28422	CyanoBase	Fischerella sp. PCC 9339 genome, GCA_000315585.1	
GCA_000316115.1          	172.18.8.72	28423	CyanoBase	Leptolyngbya sp. PCC 7375 genome, GCA_000316115.1	
GCA_000316515.1          	172.18.8.72	28424	CyanoBase	Cyanobium gracile PCC 6307 genome, GCA_000316515.1	
GCA_000316575.1          	172.18.8.72	28425	CyanoBase	Calothrix sp. PCC 7507 genome, GCA_000316575.1	
GCA_000316605.1          	172.18.8.72	28426	CyanoBase	Leptolyngbya sp. PCC 7376 genome, GCA_000316605.1	
GCA_000316625.1          	172.18.8.72	28427	CyanoBase	Nostoc sp. PCC 7107 genome, GCA_000316625.1	
GCA_000316645.1          	172.18.8.72	28428	CyanoBase	Nostoc sp. PCC 7524 genome, GCA_000316645.1	
GCA_000316665.1          	172.18.8.72	28429	CyanoBase	Rivularia sp. PCC 7116 genome, GCA_000316665.1	
GCA_000316685.1          	172.18.8.72	28430	CyanoBase	Synechococcus sp. PCC 6312 genome, GCA_000316685.1	
GCA_000317025.1          	172.18.8.72	28431	CyanoBase	Pleurocapsa sp. PCC 7327 genome, GCA_000317025.1	
GCA_000317045.1          	172.18.8.72	28432	CyanoBase	Geitlerinema sp. PCC 7407 genome, GCA_000317045.1	
GCA_000317065.1          	172.18.8.72	28433	CyanoBase	Pseudanabaena sp. PCC 7367 genome, GCA_000317065.1	
GCA_000317085.1          	172.18.8.72	28434	CyanoBase	Synechococcus sp. PCC 7502 genome, GCA_000317085.1	
GCA_000317105.1          	172.18.8.72	28435	CyanoBase	Oscillatoria acuminata PCC 6304 genome, GCA_000317105.1	
GCA_000317125.1          	172.18.8.72	28436	CyanoBase	Chroococcidiopsis thermalis PCC 7203 genome, GCA_000317125.1	
GCA_000317145.1          	172.18.8.72	28437	CyanoBase	Chamaesiphon minutus PCC 6605 genome, GCA_000317145.1	
GCA_000317205.1          	172.18.8.72	28438	CyanoBase	Fischerella muscicola PCC 7414 genome, GCA_000317205.1	
GCA_000317225.1          	172.18.8.72	28439	CyanoBase	Fischerella thermalis PCC 7521 genome, GCA_000317225.1	
GCA_000317245.1          	172.18.8.72	28440	CyanoBase	Fischerella muscicola SAG 1427-1 genome, GCA_000317245.1	
GCA_000317265.1          	172.18.8.72	28441	CyanoBase	Chlorogloeopsis fritschii PCC 9212 genome, GCA_000317265.1	
GCA_000317285.1          	172.18.8.72	28442	CyanoBase	Chlorogloeopsis fritschii PCC 6912 genome, GCA_000317285.1	
GCA_000317435.1          	172.18.8.72	28443	CyanoBase	Calothrix sp. PCC 6303 genome, GCA_000317435.1	
GCA_000317475.1          	172.18.8.72	28444	CyanoBase	Oscillatoria nigro-viridis PCC 7112 genome, GCA_000317475.1	
GCA_000317495.1          	172.18.8.72	28445	CyanoBase	Crinalium epipsammum PCC 9333 genome, GCA_000317495.1	
GCA_000317515.1          	172.18.8.72	28446	CyanoBase	Microcoleus sp. PCC 7113 genome, GCA_000317515.1	
GCA_000317535.1          	172.18.8.72	28447	CyanoBase	Cylindrospermum stagnale PCC 7417 genome, GCA_000317535.1	
GCA_000317555.1          	172.18.8.72	28448	CyanoBase	Gloeocapsa sp. PCC 7428 genome, GCA_000317555.1	
GCA_000317575.1          	172.18.8.72	28449	CyanoBase	Stanieria cyanosphaera PCC 7437 genome, GCA_000317575.1	
GCA_000317615.1          	172.18.8.72	28450	CyanoBase	Dactylococcopsis salina PCC 8305 genome, GCA_000317615.1	
GCA_000317635.1          	172.18.8.72	28451	CyanoBase	Halothece sp. PCC 7418 genome, GCA_000317635.1	
GCA_000317655.1          	172.18.8.72	28452	CyanoBase	Cyanobacterium stanieri PCC 7202 genome, GCA_000317655.1	
GCA_000317675.1          	172.18.8.72	28453	CyanoBase	Cyanobacterium aponinum PCC 10605 genome, GCA_000317675.1	
GCA_000317695.1          	172.18.8.72	28454	CyanoBase	Anabaena cylindrica PCC 7122 genome, GCA_000317695.1	
GCA_000330925.1          	172.18.8.72	28455	CyanoBase	Microcystis aeruginosa TAIHU98 genome, GCA_000330925.1	
GCA_000331305.1          	172.18.8.72	28456	CyanoBase	Calothrix sp. PCC 7103 genome, GCA_000331305.1	
GCA_000332035.1          	172.18.8.72	28457	CyanoBase	Gloeocapsa sp. PCC 73106 genome, GCA_000332035.1	
GCA_000332055.1          	172.18.8.72	28458	CyanoBase	Xenococcus sp. PCC 7305 genome, GCA_000332055.1	
GCA_000332075.2          	172.18.8.72	28459	CyanoBase	Synechocystis sp. PCC 7509 genome, GCA_000332075.2	
GCA_000332095.2          	172.18.8.72	28460	CyanoBase	Leptolyngbya sp. PCC 6406 genome, GCA_000332095.2	
GCA_000332135.1          	172.18.8.72	28461	CyanoBase	Anabaena sp. PCC 7108 genome, GCA_000332135.1	
GCA_000332155.1          	172.18.8.72	28462	CyanoBase	Kamptonema formosum PCC 6407 genome, GCA_000332155.1	
GCA_000332175.1          	172.18.8.72	28463	CyanoBase	Pseudanabaena sp. PCC 6802 genome, GCA_000332175.1	
GCA_000332195.1          	172.18.8.72	28464	CyanoBase	Pleurocapsa sp. PCC 7319 genome, GCA_000332195.1	
GCA_000332215.1          	172.18.8.72	28465	CyanoBase	Pseudanabaena biceps PCC 7429 genome, GCA_000332215.1	
GCA_000332235.1          	172.18.8.72	28466	CyanoBase	Geminocystis herdmanii PCC 6308 genome, GCA_000332235.1	
GCA_000332255.1          	172.18.8.72	28467	CyanoBase	cyanobacterium PCC 7702 genome, GCA_000332255.1	
GCA_000332275.1          	172.18.8.72	28468	CyanoBase	Synechococcus sp. PCC 7336 genome, GCA_000332275.1	
GCA_000332295.1          	172.18.8.72	28469	CyanoBase	Microchaete sp. PCC 7126 genome, GCA_000332295.1	
GCA_000332315.1          	172.18.8.72	28470	CyanoBase	Prochlorothrix hollandica PCC 9006 genome, GCA_000332315.1	
GCA_000332335.1          	172.18.8.72	28471	CyanoBase	Oscillatoria sp. PCC 10802 genome, GCA_000332335.1	
GCA_000332355.1          	172.18.8.72	28472	CyanoBase	Geitlerinema sp. PCC 7105 genome, GCA_000332355.1	
GCA_000332585.1          	172.18.8.72	28473	CyanoBase	Microcystis aeruginosa DIANCHI905 genome, GCA_000332585.1	
GCA_000340565.3          	172.18.8.72	28474	CyanoBase	Nodularia spumigena CCY9414 genome, GCA_000340565.3	
GCA_000340785.1          	172.18.8.72	28475	CyanoBase	Synechocystis sp. PCC 6803 genome, GCA_000340785.1	
GCA_000341585.2          	172.18.8.72	28476	CyanoBase	Prochlorothrix hollandica PCC 9006 genome, GCA_000341585.2	
GCA_000346485.1          	172.18.8.72	28477	CyanoBase	Scytonema hofmanni PCC 7110 genome, GCA_000346485.1	
GCA_000350105.1          	172.18.8.72	28478	CyanoBase	Richelia intracellularis HH01 genome, GCA_000350105.1	
GCA_000350125.1          	172.18.8.72	28479	CyanoBase	Richelia intracellularis HM01 genome, GCA_000350125.1	
GCA_000353285.1          	172.18.8.72	28480	CyanoBase	Leptolyngbya boryana PCC 6306 genome, GCA_000353285.1	
GCA_000380225.1          	172.18.8.72	28481	CyanoBase	filamentous cyanobacterium ESFC-1 genome, GCA_000380225.1	
GCA_000412595.1          	172.18.8.72	28482	CyanoBase	Microcystis aeruginosa SPC777 genome, GCA_000412595.1	
GCA_000426905.1          	172.18.8.72	28483	CyanoBase	Dolichospermum circinale AWQC131C genome, GCA_000426905.1	
GCA_000426925.1          	172.18.8.72	28484	CyanoBase	Dolichospermum circinale AWQC310F genome, GCA_000426925.1	
GCA_000447295.1          	172.18.8.72	28485	CyanoBase	Fischerella sp. PCC 9431 genome, GCA_000447295.1	
GCA_000464665.1          	172.18.8.72	28486	CyanoBase	Planktothrix agardhii NIVA-CYA 15 genome, GCA_000464665.1	
GCA_000464725.1          	172.18.8.72	28487	CyanoBase	Planktothrix agardhii NIVA-CYA 34 genome, GCA_000464725.1	
GCA_000464745.1          	172.18.8.72	28488	CyanoBase	Planktothrix mougeotii NIVA-CYA 405 genome, GCA_000464745.1	
GCA_000464765.1          	172.18.8.72	28489	CyanoBase	Planktothrix prolifica NIVA-CYA 406 genome, GCA_000464765.1	
GCA_000464785.1          	172.18.8.72	28490	CyanoBase	Planktothrix rubescens NIVA-CYA 407 genome, GCA_000464785.1	
GCA_000464805.1          	172.18.8.72	28491	CyanoBase	Planktothrix prolifica NIVA-CYA 540 genome, GCA_000464805.1	
GCA_000464825.1          	172.18.8.72	28492	CyanoBase	Planktothrix agardhii NIVA-CYA 56/3 genome, GCA_000464825.1	
GCA_000464845.1          	172.18.8.72	28493	CyanoBase	Planktothrix prolifica NIVA-CYA 98 genome, GCA_000464845.1	
GCA_000472885.1          	172.18.8.72	28494	CyanoBase	Mastigocoleus testarum BC008 genome, GCA_000472885.1	
GCA_000473895.1          	172.18.8.72	28495	CyanoBase	Rubidibacter lacunae KORDI 51-2 genome, GCA_000473895.1	
GCA_000478195.2          	172.18.8.72	28496	CyanoBase	Lyngbya aestuarii BL J genome, GCA_000478195.2	
GCA_000478825.2          	172.18.8.72	28497	CyanoBase	Synechocystis sp. PCC 6714 genome, GCA_000478825.2	
GCA_000482245.1          	172.18.8.72	28498	CyanoBase	Leptolyngbya sp. Heron Island J genome, GCA_000482245.1	
GCA_000484535.1          	172.18.8.72	28499	CyanoBase	Gloeobacter kilaueensis JS1 genome, GCA_000484535.1	
GCA_000485815.1          	172.18.8.72	28500	CyanoBase	Synechococcus sp. NKBG15041c genome, GCA_000485815.1	
GCA_000505665.1          	172.18.8.72	28501	CyanoBase	Thermosynechococcus sp. NK55a genome, GCA_000505665.1	
GCA_000515235.1          	172.18.8.72	28502	CyanoBase	Synechococcus sp. CC9616 genome, GCA_000515235.1	
GCA_000517105.1          	172.18.8.72	28503	CyanoBase	Fischerella sp. PCC 9605 genome, GCA_000517105.1	
GCA_000521175.1          	172.18.8.72	28504	CyanoBase	Aphanizomenon flos-aquae NIES-81 genome, GCA_000521175.1	
GCA_000582685.1          	172.18.8.72	28505	CyanoBase	Scytonema hofmanni UTEX 2349 genome, GCA_000582685.1	
GCA_000586015.1          	172.18.8.72	28506	CyanoBase	Candidatus Synechococcus spongiarum SH4 genome, GCA_000586015.1	
GCA_000599945.1          	172.18.8.72	28507	CyanoBase	Microcystis aeruginosa PCC 7005 genome, GCA_000599945.1	
GCA_000613065.1          	172.18.8.72	28508	CyanoBase	Richelia intracellularis genome, GCA_000613065.1	
GCA_000633975.1          	172.18.8.72	28509	CyanoBase	Prochlorococcus sp. scB241_526B17 genome, GCA_000633975.1	
GCA_000633995.1          	172.18.8.72	28510	CyanoBase	Prochlorococcus sp. scB241_526K3 genome, GCA_000633995.1	
GCA_000634015.1          	172.18.8.72	28511	CyanoBase	Prochlorococcus sp. scB241_526N9 genome, GCA_000634015.1	
GCA_000634035.1          	172.18.8.72	28512	CyanoBase	Prochlorococcus sp. scB241_527E14 genome, GCA_000634035.1	
GCA_000634055.1          	172.18.8.72	28513	CyanoBase	Prochlorococcus sp. scB241_527N11 genome, GCA_000634055.1	
GCA_000634075.1          	172.18.8.72	28514	CyanoBase	Prochlorococcus sp. scB241_528J14 genome, GCA_000634075.1	
GCA_000634095.1          	172.18.8.72	28515	CyanoBase	Prochlorococcus sp. scB241_528J8 genome, GCA_000634095.1	
GCA_000634115.1          	172.18.8.72	28516	CyanoBase	Prochlorococcus sp. scB241_528O2 genome, GCA_000634115.1	
GCA_000634135.1          	172.18.8.72	28517	CyanoBase	Prochlorococcus sp. scB241_528P14 genome, GCA_000634135.1	
GCA_000634155.1          	172.18.8.72	28518	CyanoBase	Prochlorococcus sp. scB241_529C4 genome, GCA_000634155.1	
GCA_000634175.1          	172.18.8.72	28519	CyanoBase	Prochlorococcus sp. scB241_529D18 genome, GCA_000634175.1	
GCA_000634195.1          	172.18.8.72	28520	CyanoBase	Prochlorococcus sp. scB243_495D8 genome, GCA_000634195.1	
GCA_000634215.1          	172.18.8.72	28521	CyanoBase	Prochlorococcus sp. scB243_495L20 genome, GCA_000634215.1	
GCA_000634235.1          	172.18.8.72	28522	CyanoBase	Prochlorococcus sp. scB243_495N16 genome, GCA_000634235.1	
GCA_000634255.1          	172.18.8.72	28523	CyanoBase	Prochlorococcus sp. scB243_496A2 genome, GCA_000634255.1	
GCA_000634275.1          	172.18.8.72	28524	CyanoBase	Prochlorococcus sp. scB243_497J18 genome, GCA_000634275.1	
GCA_000634295.1          	172.18.8.72	28525	CyanoBase	Prochlorococcus sp. scB243_498A3 genome, GCA_000634295.1	
GCA_000634315.1          	172.18.8.72	28526	CyanoBase	Prochlorococcus sp. scB243_498J20 genome, GCA_000634315.1	
GCA_000634335.1          	172.18.8.72	28527	CyanoBase	Prochlorococcus sp. scB243_498N4 genome, GCA_000634335.1	
GCA_000634355.1          	172.18.8.72	28528	CyanoBase	Prochlorococcus sp. scB243_498N8 genome, GCA_000634355.1	
GCA_000634375.1          	172.18.8.72	28529	CyanoBase	Prochlorococcus sp. scB245a_518A17 genome, GCA_000634375.1	
GCA_000634395.1          	172.18.8.72	28530	CyanoBase	Prochlorococcus sp. scB245a_518D8 genome, GCA_000634395.1	
GCA_000634415.1          	172.18.8.72	28531	CyanoBase	Prochlorococcus sp. scB245a_519A13 genome, GCA_000634415.1	
GCA_000634435.1          	172.18.8.72	28532	CyanoBase	Prochlorococcus sp. scB245a_519B7 genome, GCA_000634435.1	
GCA_000634455.1          	172.18.8.72	28533	CyanoBase	Prochlorococcus sp. scB245a_519O21 genome, GCA_000634455.1	
GCA_000634475.1          	172.18.8.72	28534	CyanoBase	Prochlorococcus sp. scB245a_520B18 genome, GCA_000634475.1	
GCA_000634495.1          	172.18.8.72	28535	CyanoBase	Prochlorococcus sp. scB245a_520D2 genome, GCA_000634495.1	
GCA_000634515.1          	172.18.8.72	28536	CyanoBase	Prochlorococcus sp. scB245a_520K10 genome, GCA_000634515.1	
GCA_000634535.1          	172.18.8.72	28537	CyanoBase	Prochlorococcus sp. scB245a_520M11 genome, GCA_000634535.1	
GCA_000634555.2          	172.18.8.72	28538	CyanoBase	Prochlorococcus sp. scB245a_521A19 genome, GCA_000634555.2	
GCA_000634575.1          	172.18.8.72	28539	CyanoBase	Prochlorococcus sp. scB245a_521N3 genome, GCA_000634575.1	
GCA_000634595.1          	172.18.8.72	28540	CyanoBase	Prochlorococcus sp. scB245a_521O23 genome, GCA_000634595.1	
GCA_000634615.1          	172.18.8.72	28541	CyanoBase	Prochlorococcus sp. scB241_526B19 genome, GCA_000634615.1	
GCA_000634635.1          	172.18.8.72	28542	CyanoBase	Prochlorococcus sp. scB241_526B22 genome, GCA_000634635.1	
GCA_000634655.1          	172.18.8.72	28543	CyanoBase	Prochlorococcus sp. scB241_526N5 genome, GCA_000634655.1	
GCA_000634675.1          	172.18.8.72	28544	CyanoBase	Prochlorococcus sp. scB241_527E15 genome, GCA_000634675.1	
GCA_000634695.1          	172.18.8.72	28545	CyanoBase	Prochlorococcus sp. scB241_527L15 genome, GCA_000634695.1	
GCA_000634715.1          	172.18.8.72	28546	CyanoBase	Prochlorococcus sp. scB241_528K19 genome, GCA_000634715.1	
GCA_000634735.1          	172.18.8.72	28547	CyanoBase	Prochlorococcus sp. scB241_528N17 genome, GCA_000634735.1	
GCA_000634755.1          	172.18.8.72	28548	CyanoBase	Prochlorococcus sp. scB241_528N20 genome, GCA_000634755.1	
GCA_000634775.1          	172.18.8.72	28549	CyanoBase	Prochlorococcus sp. scB241_528N8 genome, GCA_000634775.1	
GCA_000634795.1          	172.18.8.72	28550	CyanoBase	Prochlorococcus sp. scB241_529J15 genome, GCA_000634795.1	
GCA_000634815.1          	172.18.8.72	28551	CyanoBase	Prochlorococcus sp. scB243_495G23 genome, GCA_000634815.1	
GCA_000634835.1          	172.18.8.72	28552	CyanoBase	Prochlorococcus sp. scB243_495I8 genome, GCA_000634835.1	
GCA_000634855.1          	172.18.8.72	28553	CyanoBase	Prochlorococcus sp. scB243_495N4 genome, GCA_000634855.1	
GCA_000634875.1          	172.18.8.72	28554	CyanoBase	Prochlorococcus sp. scB243_495P20 genome, GCA_000634875.1	
GCA_000634895.1          	172.18.8.72	28555	CyanoBase	Prochlorococcus sp. scB243_496E10 genome, GCA_000634895.1	
GCA_000634915.1          	172.18.8.72	28556	CyanoBase	Prochlorococcus sp. scB243_496G15 genome, GCA_000634915.1	
GCA_000634935.1          	172.18.8.72	28557	CyanoBase	Prochlorococcus sp. scB243_497I20 genome, GCA_000634935.1	
GCA_000634955.1          	172.18.8.72	28558	CyanoBase	Prochlorococcus sp. scB243_497N18 genome, GCA_000634955.1	
GCA_000634975.1          	172.18.8.72	28559	CyanoBase	Prochlorococcus sp. scB243_498B22 genome, GCA_000634975.1	
GCA_000634995.1          	172.18.8.72	28560	CyanoBase	Prochlorococcus sp. scB243_498C16 genome, GCA_000634995.1	
GCA_000635015.1          	172.18.8.72	28561	CyanoBase	Prochlorococcus sp. scB243_498I20 genome, GCA_000635015.1	
GCA_000635035.1          	172.18.8.72	28562	CyanoBase	Prochlorococcus sp. scB243_498L10 genome, GCA_000635035.1	
GCA_000635055.1          	172.18.8.72	28563	CyanoBase	Prochlorococcus sp. scB245a_518A6 genome, GCA_000635055.1	
GCA_000635075.1          	172.18.8.72	28564	CyanoBase	Prochlorococcus sp. scB245a_518E10 genome, GCA_000635075.1	
GCA_000635095.1          	172.18.8.72	28565	CyanoBase	Prochlorococcus sp. scB245a_518J7 genome, GCA_000635095.1	
GCA_000635115.1          	172.18.8.72	28566	CyanoBase	Prochlorococcus sp. scB245a_518K17 genome, GCA_000635115.1	
GCA_000635135.1          	172.18.8.72	28567	CyanoBase	Prochlorococcus sp. scB245a_518O7 genome, GCA_000635135.1	
GCA_000635155.1          	172.18.8.72	28568	CyanoBase	Prochlorococcus sp. scB245a_519C7 genome, GCA_000635155.1	
GCA_000635175.1          	172.18.8.72	28569	CyanoBase	Prochlorococcus sp. scB245a_519E23 genome, GCA_000635175.1	
GCA_000635195.1          	172.18.8.72	28570	CyanoBase	Prochlorococcus sp. scB245a_519L21 genome, GCA_000635195.1	
GCA_000635215.1          	172.18.8.72	28571	CyanoBase	Prochlorococcus sp. scB245a_521C8 genome, GCA_000635215.1	
GCA_000635235.1          	172.18.8.72	28572	CyanoBase	Prochlorococcus sp. scB245a_521K15 genome, GCA_000635235.1	
GCA_000635255.1          	172.18.8.72	28573	CyanoBase	Prochlorococcus sp. scB245a_521O20 genome, GCA_000635255.1	
GCA_000635275.1          	172.18.8.72	28574	CyanoBase	Prochlorococcus sp. scB241_526D20 genome, GCA_000635275.1	
GCA_000635295.1          	172.18.8.72	28575	CyanoBase	Prochlorococcus sp. scB241_527G5 genome, GCA_000635295.1	
GCA_000635315.1          	172.18.8.72	28576	CyanoBase	Prochlorococcus sp. scB241_527I9 genome, GCA_000635315.1	
GCA_000635335.1          	172.18.8.72	28577	CyanoBase	Prochlorococcus sp. scB241_527L16 genome, GCA_000635335.1	
GCA_000635355.1          	172.18.8.72	28578	CyanoBase	Prochlorococcus sp. scB241_527L22 genome, GCA_000635355.1	
GCA_000635375.1          	172.18.8.72	28579	CyanoBase	Prochlorococcus sp. scB241_527P5 genome, GCA_000635375.1	
GCA_000635395.1          	172.18.8.72	28580	CyanoBase	Prochlorococcus sp. scB241_528P18 genome, GCA_000635395.1	
GCA_000635415.1          	172.18.8.72	28581	CyanoBase	Prochlorococcus sp. scB241_529B19 genome, GCA_000635415.1	
GCA_000635435.1          	172.18.8.72	28582	CyanoBase	Prochlorococcus sp. scB241_529J11 genome, GCA_000635435.1	
GCA_000635455.1          	172.18.8.72	28583	CyanoBase	Prochlorococcus sp. scB241_529J16 genome, GCA_000635455.1	
GCA_000635475.1          	172.18.8.72	28584	CyanoBase	Prochlorococcus sp. scB241_529O19 genome, GCA_000635475.1	
GCA_000635495.1          	172.18.8.72	28585	CyanoBase	Prochlorococcus sp. scB243_495K23 genome, GCA_000635495.1	
GCA_000635515.1          	172.18.8.72	28586	CyanoBase	Prochlorococcus sp. scB243_495N3 genome, GCA_000635515.1	
GCA_000635535.1          	172.18.8.72	28587	CyanoBase	Prochlorococcus sp. scB243_496M6 genome, GCA_000635535.1	
GCA_000635555.1          	172.18.8.72	28588	CyanoBase	Prochlorococcus sp. scB243_496N4 genome, GCA_000635555.1	
GCA_000635575.1          	172.18.8.72	28589	CyanoBase	Prochlorococcus sp. scB243_497E17 genome, GCA_000635575.1	
GCA_000635595.1          	172.18.8.72	28590	CyanoBase	Prochlorococcus sp. scB243_498B23 genome, GCA_000635595.1	
GCA_000635615.1          	172.18.8.72	28591	CyanoBase	Prochlorococcus sp. scB243_498F21 genome, GCA_000635615.1	
GCA_000635635.1          	172.18.8.72	28592	CyanoBase	Prochlorococcus sp. scB243_498G3 genome, GCA_000635635.1	
GCA_000635655.1          	172.18.8.72	28593	CyanoBase	Prochlorococcus sp. scB243_498M14 genome, GCA_000635655.1	
GCA_000635675.1          	172.18.8.72	28594	CyanoBase	Prochlorococcus sp. scB243_498P15 genome, GCA_000635675.1	
GCA_000635695.1          	172.18.8.72	28595	CyanoBase	Prochlorococcus sp. scB243_498P3 genome, GCA_000635695.1	
GCA_000635715.1          	172.18.8.72	28596	CyanoBase	Prochlorococcus sp. scB245a_518I6 genome, GCA_000635715.1	
GCA_000635735.1          	172.18.8.72	28597	CyanoBase	Prochlorococcus sp. scB245a_519D13 genome, GCA_000635735.1	
GCA_000635755.1          	172.18.8.72	28598	CyanoBase	Prochlorococcus sp. scB245a_519G16 genome, GCA_000635755.1	
GCA_000635775.1          	172.18.8.72	28599	CyanoBase	Prochlorococcus sp. scB245a_519O11 genome, GCA_000635775.1	
GCA_000635795.1          	172.18.8.72	28600	CyanoBase	Prochlorococcus sp. scB245a_520E22 genome, GCA_000635795.1	
GCA_000635815.1          	172.18.8.72	28601	CyanoBase	Prochlorococcus sp. scB245a_520F22 genome, GCA_000635815.1	
GCA_000635835.1          	172.18.8.72	28602	CyanoBase	Prochlorococcus sp. scB245a_521B10 genome, GCA_000635835.1	
GCA_000635855.1          	172.18.8.72	28603	CyanoBase	Prochlorococcus sp. scB245a_521M10 genome, GCA_000635855.1	
GCA_000635875.1          	172.18.8.72	28604	CyanoBase	Prochlorococcus sp. scB245a_521N5 genome, GCA_000635875.1	
GCA_000708525.1          	172.18.8.72	28605	CyanoBase	Cyanobium sp. CACIAM 14 genome, GCA_000708525.1	
GCA_000710505.1          	172.18.8.72	28606	CyanoBase	Planktothrix agardhii NIVA-CYA 126/8 genome, GCA_000710505.1	
GCA_000715475.1          	172.18.8.72	28607	CyanoBase	Synechococcus sp. NKBG042902 genome, GCA_000715475.1	
GCA_000733415.1          	172.18.8.72	28608	CyanoBase	Leptolyngbya sp. JSC-1 genome, GCA_000733415.1	
GCA_000734895.2          	172.18.8.72	28609	CyanoBase	Calothrix sp. 336/3 genome, GCA_000734895.2	
GCA_000737535.1          	172.18.8.72	28610	CyanoBase	Synechococcus sp. KORDI-100 genome, GCA_000737535.1	
GCA_000737575.1          	172.18.8.72	28611	CyanoBase	Synechococcus sp. KORDI-49 genome, GCA_000737575.1	
GCA_000737595.1          	172.18.8.72	28612	CyanoBase	Synechococcus sp. KORDI-52 genome, GCA_000737595.1	
GCA_000737945.1          	172.18.8.72	28613	CyanoBase	Candidatus Atelocyanobacterium thalassa isolate SIO64986 genome, GCA_000737945.1	
GCA_000756305.1          	172.18.8.72	28614	CyanoBase	Myxosarcina sp. GI1 genome, GCA_000756305.1	
GCA_000757845.1          	172.18.8.72	28615	CyanoBase	Prochlorococcus sp. MIT 0604 genome, GCA_000757845.1	
GCA_000757865.1          	172.18.8.72	28616	CyanoBase	Prochlorococcus sp. MIT 0801 genome, GCA_000757865.1	
GCA_000759855.1          	172.18.8.72	28617	CyanoBase	Prochlorococcus marinus str. MIT 9107 genome, GCA_000759855.1	
GCA_000759865.1          	172.18.8.72	28618	CyanoBase	Prochlorococcus marinus str. MIT 9116 genome, GCA_000759865.1	
GCA_000759875.1          	172.18.8.72	28619	CyanoBase	Prochlorococcus marinus str. EQPAC1 genome, GCA_000759875.1	
GCA_000759885.1          	172.18.8.72	28620	CyanoBase	Prochlorococcus marinus str. GP2 genome, GCA_000759885.1	
GCA_000759935.1          	172.18.8.72	28621	CyanoBase	Prochlorococcus marinus str. MIT 9123 genome, GCA_000759935.1	
GCA_000759955.1          	172.18.8.72	28622	CyanoBase	Prochlorococcus marinus str. MIT 9201 genome, GCA_000759955.1	
GCA_000759975.1          	172.18.8.72	28623	CyanoBase	Prochlorococcus marinus str. MIT 9302 genome, GCA_000759975.1	
GCA_000760015.1          	172.18.8.72	28624	CyanoBase	Prochlorococcus marinus str. MIT 9311 genome, GCA_000760015.1	
GCA_000760035.1          	172.18.8.72	28625	CyanoBase	Prochlorococcus marinus str. MIT 9314 genome, GCA_000760035.1	
GCA_000760055.1          	172.18.8.72	28626	CyanoBase	Prochlorococcus marinus str. MIT 9321 genome, GCA_000760055.1	
GCA_000760075.1          	172.18.8.72	28627	CyanoBase	Prochlorococcus marinus str. MIT 9322 genome, GCA_000760075.1	
GCA_000760095.1          	172.18.8.72	28628	CyanoBase	Prochlorococcus marinus str. MIT 9401 genome, GCA_000760095.1	
GCA_000760115.1          	172.18.8.72	28629	CyanoBase	Prochlorococcus marinus str. SB genome, GCA_000760115.1	
GCA_000760155.1          	172.18.8.72	28630	CyanoBase	Prochlorococcus marinus str. LG genome, GCA_000760155.1	
GCA_000760175.1          	172.18.8.72	28631	CyanoBase	Prochlorococcus sp. MIT 0601 genome, GCA_000760175.1	
GCA_000760195.1          	172.18.8.72	28632	CyanoBase	Prochlorococcus sp. MIT 0602 genome, GCA_000760195.1	
GCA_000760215.1          	172.18.8.72	28633	CyanoBase	Prochlorococcus sp. MIT 0603 genome, GCA_000760215.1	
GCA_000760235.1          	172.18.8.72	28634	CyanoBase	Prochlorococcus marinus str. PAC1 genome, GCA_000760235.1	
GCA_000760255.1          	172.18.8.72	28635	CyanoBase	Prochlorococcus marinus str. SS2 genome, GCA_000760255.1	
GCA_000760275.1          	172.18.8.72	28636	CyanoBase	Prochlorococcus marinus str. SS35 genome, GCA_000760275.1	
GCA_000760295.1          	172.18.8.72	28637	CyanoBase	Prochlorococcus sp. MIT 0701 genome, GCA_000760295.1	
GCA_000760315.1          	172.18.8.72	28638	CyanoBase	Prochlorococcus sp. MIT 0702 genome, GCA_000760315.1	
GCA_000760335.1          	172.18.8.72	28639	CyanoBase	Prochlorococcus sp. MIT 0703 genome, GCA_000760335.1	
GCA_000760355.1          	172.18.8.72	28640	CyanoBase	Prochlorococcus marinus str. SS51 genome, GCA_000760355.1	
GCA_000760375.1          	172.18.8.72	28641	CyanoBase	Prochlorococcus sp. SS52 genome, GCA_000760375.1	
GCA_000760695.2          	172.18.8.72	28642	CyanoBase	Tolypothrix bouteillei VB521301 genome, GCA_000760695.2	
GCA_000763385.1          	172.18.8.72	28643	CyanoBase	Leptolyngbya sp. KIOST-1 genome, GCA_000763385.1	
GCA_000775285.1          	172.18.8.72	28644	CyanoBase	Neosynechococcus sphagnicola sy1 genome, GCA_000775285.1	
GCA_000787675.1          	172.18.8.72	28645	CyanoBase	Microcystis aeruginosa NIES-44 genome, GCA_000787675.1	
GCA_000789435.1          	172.18.8.72	28646	CyanoBase	Aphanizomenon flos-aquae 2012/KM1/D3 genome, GCA_000789435.1	
GCA_000817325.1          	172.18.8.72	28647	CyanoBase	Synechococcus sp. UTEX 2973 genome, GCA_000817325.1	
GCA_000817735.1          	172.18.8.72	28648	CyanoBase	Scytonema millei VB511283 genome, GCA_000817735.1	
GCA_000817745.1          	172.18.8.72	28649	CyanoBase	Aphanocapsa montana BDHKU210001 genome, GCA_000817745.1	
GCA_000817775.1          	172.18.8.72	28650	CyanoBase	Lyngbya confervoides BDU141951 genome, GCA_000817775.1	
GCA_000817785.1          	172.18.8.72	28651	CyanoBase	Hassallia byssoidea VB512170 genome, GCA_000817785.1	
GCA_000828075.1          	172.18.8.72	28652	CyanoBase	Tolypothrix campylonemoides VB511288 genome, GCA_000828075.1	
GCA_000828085.1          	172.18.8.72	28653	CyanoBase	Scytonema tolypothrichoides VB-61278 genome, GCA_000828085.1	
GCA_000829235.1          	172.18.8.72	28654	CyanoBase	cyanobacterium endosymbiont of Epithemia turgida isolate EtSB Lake Yunoko genome, GCA_000829235.1	
GCA_000934435.1          	172.18.8.72	28655	CyanoBase	Mastigocladus laminosus UU774 genome, GCA_000934435.1	
GCA_000952155.1          	172.18.8.72	28656	CyanoBase	Chroococcales cyanobacterium CENA595 genome, GCA_000952155.1	
GCA_000963755.2          	172.18.8.72	28657	CyanoBase	Trichodesmium erythraeum 21-75 genome, GCA_000963755.2	
GCA_000972705.2          	172.18.8.72	28658	CyanoBase	Limnoraphis robusta CS-951 genome, GCA_000972705.2	
GCA_000973065.1          	172.18.8.72	28659	CyanoBase	Arthrospira sp. PCC 8005 genome, GCA_000973065.1	
GCA_000974245.1          	172.18.8.72	28660	CyanoBase	Arthrospira sp. TJSD091 genome, GCA_000974245.1	
GCA_000981785.1          	172.18.8.72	28661	CyanoBase	Microcystis aeruginosa NIES-2549 genome, GCA_000981785.1	
GCA_000987385.1          	172.18.8.72	28662	CyanoBase	Trichodesmium thiebautii H9-4 genome, GCA_000987385.1	
GCA_001007625.1          	172.18.8.72	28663	CyanoBase	Candidatus Synechococcus spongiarum 142 genome, GCA_001007625.1	
GCA_001007635.1          	172.18.8.72	28664	CyanoBase	Candidatus Synechococcus spongiarum 15L genome, GCA_001007635.1	
GCA_001007665.1          	172.18.8.72	28665	CyanoBase	Candidatus Synechococcus spongiarum SP3 genome, GCA_001007665.1	
GCA_001039265.1          	172.18.8.72	28666	CyanoBase	Synechococcus sp. GFB01 genome, GCA_001039265.1	
GCA_001039555.1          	172.18.8.72	28667	CyanoBase	Crocosphaera watsonii WH 8502 genome, GCA_001039555.1	
GCA_001039615.1          	172.18.8.72	28668	CyanoBase	Crocosphaera watsonii WH 0401 genome, GCA_001039615.1	
GCA_001039635.1          	172.18.8.72	28669	CyanoBase	Crocosphaera watsonii WH 0402 genome, GCA_001039635.1	
GCA_001040845.1          	172.18.8.72	28670	CyanoBase	Synechococcus sp. WH 8020 genome, GCA_001040845.1	
GCA_001050835.1          	172.18.8.72	28671	CyanoBase	Crocosphaera watsonii WH 0005 genome, GCA_001050835.1	
GCA_001180245.1          	172.18.8.72	28672	CyanoBase	Prochlorococcus marinus genome, GCA_001180245.1	
GCA_001180265.1          	172.18.8.72	28673	CyanoBase	Prochlorococcus marinus genome, GCA_001180265.1	
GCA_001180285.1          	172.18.8.72	28674	CyanoBase	Prochlorococcus marinus genome, GCA_001180285.1	
GCA_001180305.1          	172.18.8.72	28675	CyanoBase	Prochlorococcus marinus genome, GCA_001180305.1	
GCA_001180325.1          	172.18.8.72	28676	CyanoBase	Prochlorococcus marinus genome, GCA_001180325.1	
GCA_001182765.1          	172.18.8.72	28677	CyanoBase	Synechococcus sp. WH 8103 genome, GCA_001182765.1	
GCA_001264245.1          	172.18.8.72	28678	CyanoBase	Microcystis panniformis FACHB-1757 genome, GCA_001264245.1	
GCA_001275395.1          	172.18.8.72	28679	CyanoBase	Hapalosiphon sp. MRB220 genome, GCA_001275395.1	
GCA_001276715.1          	172.18.8.72	28680	CyanoBase	Planktothricoides sp. SR001 genome, GCA_001276715.1	
GCA_001277295.1          	172.18.8.72	28681	CyanoBase	Anabaena sp. wa102 genome, GCA_001277295.1	
GCA_001298445.1          	172.18.8.72	28682	CyanoBase	Nostoc piscinale CENA21 genome, GCA_001298445.1	
GCA_001314865.1          	172.18.8.72	28683	CyanoBase	Phormidesmis priestleyi Ana genome, GCA_001314865.1	
GCA_001314905.1          	172.18.8.72	28684	CyanoBase	Phormidium sp. OSCR genome, GCA_001314905.1	
GCA_001318385.1          	172.18.8.72	28685	CyanoBase	Synechocystis sp. PCC 6803 genome, GCA_001318385.1	
GCA_001402795.1          	172.18.8.72	28686	CyanoBase	Pseudanabaena sp. Roaring Creek genome, GCA_001402795.1	
GCA_001456025.1          	172.18.8.72	28687	CyanoBase	Mastigocoleus testarum BC008 genome, GCA_001456025.1	
GCA_001458455.1          	172.18.8.72	28688	CyanoBase	Chrysosporum ovalisporum genome, GCA_001458455.1	
--EOS--

return 1 ;
