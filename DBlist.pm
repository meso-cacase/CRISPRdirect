package DBlist ;

# データベースの正式名およびホスト名/ポート番号の一覧
#
# フォーマット：
# DB	host	port	fullname	synonym(複数の場合は;で区切る)
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
hg38                     	172.18.8.138	28017	Human (Homo sapiens) genome, GRCh38/hg38 (Dec, 2013)
hg19                     	172.18.8.138	28018	Human (Homo sapiens) genome, GRCh37/hg19 (Feb, 2009)
hg18                     	172.18.8.76	28116	Human (Homo sapiens) genome, NCBI36/hg18 (Mar, 2006)
JRGv2                    	172.18.8.72	28263	Human (Homo sapiens) Japanese Reference Genome, JRGv2 (Jun, 2017)
JRGv1                    	172.18.8.72	28261	Human (Homo sapiens) Japanese Reference Genome, JRGv1 (Aug, 2016)
mm39                     	172.18.8.138	28851	Mouse (Mus musculus) genome, GRCm39/mm39 (Jun, 2020)
mm10                     	172.18.8.138	28019	Mouse (Mus musculus) genome, GRCm38/mm10 (Dec, 2011)
mm9                      	172.18.8.78	28020	Mouse (Mus musculus) genome, NCBI37/mm9 (Jul, 2007)
MSMv3                    	172.18.8.72	28265	Mouse (Mus musculus) genome, MSMv3
JF1v2                    	172.18.8.72	28266	Mouse (Mus musculus) genome, JF1v2
rn6                      	172.18.8.77	28054	Rat (Rattus norvegicus) genome, RGSC 6.0/rn6 (Jul, 2014)
rn5                      	172.18.8.77	28055	Rat (Rattus norvegicus) genome, RGSC 5.0/rn5 (Mar, 2012)
vicPac2                  	172.18.8.78	28021	Alpaca (Vicugna pacos) genome, Vicugna_pacos-2.0.1/vicPac2 (Mar, 2013)
dasNov3                  	172.18.8.78	28022	Armadillo (Dasypus novemcinctus) genome, Baylor/dasNov3 (Dec, 2011)
papAnu2                  	172.18.8.78	28023	Baboon (Papio anubis) genome, Baylor Panu_2.0/papAnu2 (Mar, 2012)
otoGar3                  	172.18.8.78	28024	Bushbaby (Otolemur garnettii) genome, Broad/otoGar3 (Mar, 2011)
felCat5                  	172.18.8.78	28025	Cat (Felis catus) genome, ICGSC Felis_catus 6.2/felCat5 (Sep, 2011)
panTro4                  	172.18.8.78	28026	Chimp (Pan troglodytes) genome, CSAC 2.1.4/panTro4 (Feb, 2011)
criGri1                  	172.18.8.78	28027	Chinese hamster (Cricetulus griseus) genome, C_griseus_v1.0/criGri1 (Jul, 2013)
bosTau8                  	172.18.8.78	28029	Cow (Bos taurus) genome, Bos_taurus_UMD_3.1.1/bosTau8 (Jun, 2014)
bosTau7                  	172.18.8.78	28028	Cow (Bos taurus) genome, Btau_4.6.1/bosTau7 (Oct, 2011)
canFam3                  	172.18.8.78	28030	Dog (Canis familiaris) genome, Broad CanFam3.1/canFam3 (Sep, 2011)
turTru2                  	172.18.8.78	28031	Dolphin (Tursiops truncatus) genome, Baylor Ttru_1.4/turTru2 (Oct, 2011)
loxAfr3                  	172.18.8.78	28032	Elephant (Loxodonta africana) genome, Broad/loxAfr3 (Jul, 2009)
musFur1                  	172.18.8.78	28033	Ferret (Mustela putorius furo) genome, MusPutFur1.0/musFur1 (Apr, 2011)
nomLeu3                  	172.18.8.78	28034	Gibbon (Nomascus leucogenys) genome, GGSC Nleu3.0/nomLeu3 (Oct, 2012)
gorGor3                  	172.18.8.78	28035	Gorilla (Gorilla gorilla gorilla) genome, gorGor3.1/gorGor3 (May, 2011)
cavPor3                  	172.18.8.78	28036	Guinea pig (Cavia porcellus) genome, Broad/cavPor3 (Feb, 2008)
eriEur2                  	172.18.8.78	28037	Hedgehog (Erinaceus europaeus) genome, EriEur2.0/eriEur2 (May, 2012)
equCab2                  	172.18.8.78	28038	Horse (Equus caballus) genome, Broad/equCab2 (Sep, 2007)
dipOrd1                  	172.18.8.78	28039	Kangaroo rat (Dipodomys ordii) genome, Broad/dipOrd1 (Jul, 2008)
triMan1                  	172.18.8.78	28040	Manatee (Trichechus manatus latirostris) genome, Broad v1.0/triMan1 (Oct, 2011)
calJac3                  	172.18.8.78	28041	Marmoset (Callithrix jacchus) genome, WUGSC 3.2/calJac3 (Mar, 2009)
pteVam1                  	172.18.8.78	28042	Megabat (Pteropus vampyrus) genome, Broad/pteVam1 (Jul, 2008)
myoLuc2                  	172.18.8.78	28043	Microbat (Myotis lucifugus) genome, Broad Institute Myoluc2.0/myoLuc2 (Jul, 2010)
balAcu1                  	172.18.8.77	28044	Minke whale (Balaenoptera acutorostrata scammoni) genome, BalAcu1.0/balAcu1 (Oct, 2013)
micMur1                  	172.18.8.77	28045	Mouse lemur (Microcebus murinus) genome, Broad/micMur1 (Jul, 2007)
hetGla2                  	172.18.8.77	28046	Naked mole-rat (Heterocephalus glaber) genome, Broad HetGla_female_1.0/hetGla2 (Jan, 2012)
monDom5                  	172.18.8.77	28047	Opossum (Monodelphis domestica) genome, Broad/monDom5 (Oct, 2006)
ponAbe2                  	172.18.8.77	28048	Orangutan (Pongo abelii) genome, WUGSC 2.0.2/ponAbe2 (Jul, 2007)
ailMel1                  	172.18.8.77	28049	Panda (Ailuropoda melanoleuca) genome, BGI-Shenzhen 1.0/ailMel1 (Dec, 2009)
susScr3                  	172.18.8.77	28050	Pig (Sus scrofa) genome, SGSC Sscrofa10.2/susScr3 (Aug, 2011)
ochPri3                  	172.18.8.77	28051	Pika (Ochotona princeps) genome, OchPri3.0/ochPri3 (May, 2012)
ornAna1                  	172.18.8.77	28052	Platypus (Ornithorhynchus anatinus) genome, WUGSC 5.0.1/ornAna1 (Mar, 2007)
oryCun2                  	172.18.8.77	28053	Rabbit (Oryctolagus cuniculus) genome, Broad/oryCun2 (Apr, 2009)
rheMac3                  	172.18.8.77	28056	Rhesus (Macaca mulatta) genome, BGI CR_1.0/rheMac3 (Oct, 2010)
proCap1                  	172.18.8.77	28057	Rock hyrax (Procavia capensis) genome, Broad/proCap1 (Jul, 2008)
oviAri3                  	172.18.8.77	28058	Sheep (Ovis aries) genome, ISGC Oar_v3.1/oviAri3 (Aug, 2012)
sorAra2                  	172.18.8.77	28059	Shrew (Sorex araneus) genome, Broad/sorAra2 (Aug, 2008)
choHof1                  	172.18.8.77	28060	Sloth (Choloepus hoffmanni) genome, Broad/choHof1 (Jul, 2008)
speTri2                  	172.18.8.77	28061	Squirrel (Spermophilus tridecemlineatus) genome, Broad/speTri2 (Nov, 2011)
saiBol1                  	172.18.8.77	28062	Squirrel monkey (Saimiri boliviensis) genome, Broad/saiBol1 (Oct, 2011)
tarSyr1                  	172.18.8.77	28063	Tarsier (Tarsius syrichta) genome, Broad/tarSyr1 (Aug, 2008)
sarHar1                  	172.18.8.77	28064	Tasmanian devil (Sarcophilus harrisii) genome, WTSI Devil_ref v7.0/sarHar1 (Feb, 2011)
echTel2                  	172.18.8.77	28065	Tenrec (Echinops telfairi) genome, Broad/echTel2 (Nov, 2012)
tupBel1                  	172.18.8.77	28066	Tree shrew (Tupaia belangeri) genome, Broad/tupBel1 (Dec, 2006)
macEug2                  	172.18.8.77	28067	Wallaby (Macropus eugenii) genome, TWGS Meug_1.1/macEug2 (Sep, 2009)
cerSim1                  	172.18.8.77	28068	White rhinoceros (Ceratotherium simum) genome, CerSimSim1.0/cerSim1 (May, 2012)
allMis1                  	172.18.8.76	28069	American alligator (Alligator mississippiensis) genome, allMis0.2/allMis1 (Aug, 2012)
gadMor1                  	172.18.8.76	28070	Atlantic cod (Gadus morhua) genome, Genofisk GadMor_May2010/gadMor1 (May, 2010)
melUnd1                  	172.18.8.76	28071	Budgerigar (Melopsittacus undulatus) genome, WUSTL v6.3/melUnd1 (Sep, 2011)
galGal4                  	172.18.8.76	28072	Chicken (Gallus gallus) genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)
latCha1                  	172.18.8.76	28073	Coelacanth (Latimeria chalumnae) genome, Broad/latCha1 (Aug, 2011)
calMil1                  	172.18.8.76	28074	Elephant shark (Callorhinchus milii) genome, Callorhinchus_milii-6.1.3/calMil1 (Dec, 2013)
fr3                      	172.18.8.76	28075	Fugu (Takifugu rubripes) genome, FUGU5/fr3 (Oct, 2011)
petMar2                  	172.18.8.76	28076	Lamprey (Petromyzon marinus) genome, WUGSC 7.0/petMar2 (Sep, 2010)
anoCar2                  	172.18.8.76	28077	Lizard (Anolis carolinensis) genome, Broad AnoCar2.0/anoCar2 (May, 2010)
oryLat2                  	172.18.8.76	28078	Medaka (Oryzias latipes) genome, NIG/UT MEDAKA1/oryLat2 (Oct, 2005)
geoFor1                  	172.18.8.76	28079	Medium ground finch (Geospiza fortis) genome, GeoFor_1.0/geoFor1 (Apr, 2012)
oreNil2                  	172.18.8.76	28080	Nile tilapia (Oreochromis niloticus) genome, Broad oreNil1.1/oreNil2 (Jan, 2011)
chrPic1                  	172.18.8.76	28081	Painted turtle (Chrysemys picta bellii) genome, v3.0.1/chrPic1 (Dec, 2011)
gasAcu1                  	172.18.8.76	28082	Stickleback (Gasterosteus aculeatus) genome, Broad/gasAcu1 (Feb, 2006)
tetNig2                  	172.18.8.76	28083	Tetraodon (Tetraodon nigroviridis) genome, Genoscope 8.0/tetNig2 (Mar, 2007)
melGal1                  	172.18.8.76	28084	Turkey (Meleagris gallopavo) genome, TGC Turkey_2.01/melGal1 (Dec, 2009)
taeGut2                  	172.18.8.76	28086	Zebra finch (Taeniopygia guttata) genome, WashU taeGut324/taeGut2 (Feb, 2013)
danRer11                 	172.18.8.76	28089	Zebrafish (Danio rerio) genome, GRCz11/danRer11 (May, 2017)
danRer10                 	172.18.8.76	28088	Zebrafish (Danio rerio) genome, GRCz10/danRer10 (Sep, 2014)
danRer7                  	172.18.8.76	28087	Zebrafish (Danio rerio) genome, Zv9/danRer7 (Jul, 2010)
ci2                      	172.18.8.76	28090	Sea squirt (Ciona intestinalis) genome, JGI 2.1/ci2 (Mar, 2005)
KH                       	172.18.8.77	28231	Sea squirt (Ciona intestinalis) genome, KH (Jul, 2008)
Spur_v3.1                	172.18.8.77	28232	Purple sea urchin (Strongylocentrotus purpuratus) genome, Spur_v3.1 (Jun, 2011)
braFlo1                  	172.18.8.76	28091	Lancelet (Branchiostoma floridae) genome, JGI 1.0/braFlo1 (Mar, 2006)
strPur2                  	172.18.8.76	28092	Purple sea urchin (Strongylocentrotus purpuratus) genome, Baylor 2.1/strPur2 (Sep, 2006)
anoGam1                  	172.18.8.76	28093	African malaria mosquito (Anopheles gambiae) genome, IAGEC MOZ2/anoGam1 (Feb, 2003)
apiMel2                  	172.18.8.76	28094	Honeybee (Apis mellifera) genome, Baylor 2.0/apiMel2 (Jan, 2005)
dm6                      	172.18.8.76	28098	Fruit fly (Drosophila melanogaster) genome, BDGP Release 6 + ISO1 MT/dm6 (Aug, 2014)
dm3                      	172.18.8.76	28099	Fruit fly (Drosophila melanogaster) genome, BDGP R5/dm3 (Apr, 2006)
droAna2                  	172.18.8.76	28095	Fruit fly (Drosophila ananassae) genome, Agencourt prelim/droAna2 (Aug, 2005)
droEre1                  	172.18.8.76	28096	Fruit fly (Drosophila erecta) genome, Agencourt prelim/droEre1 (Aug, 2005)
droGri1                  	172.18.8.76	28097	Fruit fly (Drosophila grimshawi) genome, Agencourt prelim/droGri1 (Aug, 2005)
droMoj2                  	172.18.8.76	28100	Fruit fly (Drosophila mojavensis) genome, Agencourt prelim/droMoj2 (Aug, 2005)
droPer1                  	172.18.8.76	28101	Fruit fly (Drosophila persimilis) genome, Broad/droPer1 (Oct, 2005)
dp3                      	172.18.8.76	28102	Fruit fly (Drosophila pseudoobscura) genome, FlyBase 1.03/dp3 (Nov, 2004)
droSec1                  	172.18.8.76	28103	Fruit fly (Drosophila sechellia) genome, Broad/droSec1 (Oct, 2005)
droSim1                  	172.18.8.76	28104	Fruit fly (Drosophila simulans) genome, WUGSC mosaic 1.0/droSim1 (Apr, 2005)
droVir2                  	172.18.8.76	28105	Fruit fly (Drosophila virilis) genome, Agencourt prelim/droVir2 (Aug, 2005)
droYak2                  	172.18.8.76	28106	Fruit fly (Drosophila yakuba) genome, WUGSC 7.1/droYak2 (Nov, 2005)
caePb2                   	172.18.8.76	28107	Roundworm (Caenorhabditis brenneri) genome, WUGSC 6.0.1/caePb2 (Feb, 2008)
cb3                      	172.18.8.76	28108	Roundworm (Caenorhabditis briggsae) genome, WUGSC 1.0/cb3 (Jan, 2007)
ce10                     	172.18.8.76	28109	Roundworm (Caenorhabditis elegans) genome, WS220/ce10 (Oct, 2010)
caeJap1                  	172.18.8.76	28110	Roundworm (Caenorhabditis japonica) genome, WUGSC 3.0.2/caeJap1 (Mar, 2008)
caeRem3                  	172.18.8.76	28111	Roundworm (Caenorhabditis remanei) genome, WUGSC 15.0.1/caeRem3 (May, 2007)
priPac1                  	172.18.8.76	28112	Parasitic nematode (Pristionchus pacificus) genome, WUGSC 5.0/priPac1 (Feb, 2007)
sacCer3                  	172.18.8.76	28113	Budding yeast (Saccharomyces cerevisiae) S288C genome, sacCer3 (Apr, 2011)
aplCal1                  	172.18.8.76	28114	Sea hare (Aplysia californica) genome, Broad 2.0/aplCal1 (Sep, 2008)
eboVir3                  	172.18.8.76	28115	Ebola virus genome, Sierra Leone G3683/KM034562.1/eboVir3 (Jun, 2014)
OryAfe1.0                	172.18.8.76	28117	Aardvark (Orycteropus afer) genome, OryAfe1.0 (May, 2012)
PoeFor_5.1.2             	172.18.8.76	28118	Amazon molly (Poecilia formosa) genome, Poecilia_formosa-5.1.2 (Oct, 2013)
CSAV2.0                  	172.18.8.76	28119	Sea squirt (Ciona savignyi) genome, CSAV 2.0 (Oct, 2005)
AstMex102                	172.18.8.76	28120	Cave fish (Astyanax mexicanus) genome, AstMex102 (Apr, 2013)
PelSin_1.0               	172.18.8.76	28121	Chinese softshell turtle (Pelodiscus sinensis) genome, PelSin_1.0 (Oct, 2011)
MacFas5.0                	172.18.8.76	28122	Crab-eating macaque (Macaca fascicularis) genome, MacFas5.0 (Jun, 2013)
BGI_duck_1.0             	172.18.8.76	28123	Duck (Anas platyrhynchos) genome, BGI_duck_1.0 (Apr, 2013)
FicAlb_1.4               	172.18.8.76	28124	Flycatcher (Ficedula albicollis) genome, FicAlb_1.4 (Jan, 2012)
Pham                     	172.18.8.76	28125	Hamadryas baboon (Papio hamadryas) genome, Pham (Nov, 2008)
Xipmac4.4.2              	172.18.8.76	28126	Platyfish (Xiphophorus maculatus) genome, Xipmac4.4.2 (Jan, 2012)
MicOch1.0                	172.18.8.76	28127	Prairie vole (Microtus ochrogaster) genome, MicOch1.0 (Nov, 2012)
PhyMac_2.0.2             	172.18.8.76	28128	Sperm whale (Physeter macrocephalus) genome, PhyMac_2.0.2 (Sep, 2013)
LepOcu1                  	172.18.8.76	28129	Spotted gar (Lepisosteus oculatus) genome, LepOcu1 (Dec, 2011)
ChlSab1.1                	172.18.8.76	28130	Green monkey (Chlorocebus sabaeus) genome, ChlSab1.1 (Mar, 2014)
macaque_CE_1             	172.18.8.77	28229	Crab-eating macaque (Macaca fascicularis) genome, CE_1.0 (Jul, 2011)
MesAur1.0                	172.18.8.77	28240	Golden hamster (Mesocricetus auratus) genome, MesAur1.0 (Mar, 2013)
Xenla9.2                 	172.18.8.77	28888	Frog (Xenopus laevis) genome, XenBase/NCBI 9.2
Xenla9                   	172.18.8.77	28228	Frog (Xenopus laevis) genome, XenBase/JGI 9.1
Xenla7                   	172.18.8.72	28217	Frog (Xenopus laevis) genome, JGI 7.1/Xenla7 (Dec, 2013)
Xentr10.0                	172.18.8.77	28889	Frog (Xenopus tropicalis) genome, XenBase/UCB 10.0
Xentr9                   	172.18.8.77	28227	Frog (Xenopus tropicalis) genome, XenBase/JGI 9.0
Xentr8                   	172.18.8.77	28226	Frog (Xenopus tropicalis) genome, XenBase/JGI 8.0
Xentr7                   	172.18.8.77	28225	Frog (Xenopus tropicalis) genome, XenBase/JGI 7.1
xenTro3                  	172.18.8.76	28085	Frog (Xenopus tropicalis) genome, JGI 4.2/xenTro3 (Nov, 2009)
Acyr_2.0                 	172.18.8.76	28131	Pea aphid (Acyrthosiphon pisum) genome, Acyr_2.0 (Jun, 2010)
AaegL5                   	172.18.8.72	28000	Yellow fever mosquito (Aedes aegypti) genome, AaegL5 (Jun, 2017)
AaegL3                   	172.18.8.76	28132	Yellow fever mosquito (Aedes aegypti) genome, AaegL3 (Dec, 2013)
AaloF1                   	172.18.8.72	28001	Asian tiger mosquito (Aedes albopictus) genome, AaloF1 (Nov, 2015)
AdarC3                   	172.18.8.76	28134	American malaria mosquito (Anopheles darlingi) genome, AdarC3 (Jan, 2014)
Aqu1                     	172.18.8.76	28133	Sponge (Amphimedon queenslandica) genome, Aqu1 (Oct, 2010)
Aros_1.0                 	172.18.8.72	28283	Turnip sawfly (Athalia rosae) genome, Aros_1.0 (Mar, 2013)
Attacep1.0               	172.18.8.76	28135	Leafcutter ant (Atta cephalotes) genome, Attacep1.0 (Jul, 2012)
B_malayi_3.0             	172.18.8.76	28137	Filarial nematode worm (Brugia malayi) genome, B_malayi-3.0 (Dec, 2012)
Capte_v1.0               	172.18.8.76	28138	Polychaete worm (Capitella teleta) genome, Capitella teleta v1.0 (Dec, 2012)
oyster_v9                	172.18.8.76	28139	Pacific oyster (Crassostrea gigas) genome, oyster_v9 (Sep, 2012)
CpipJ2                   	172.18.8.76	28140	Southern house mosquito (Culex quinquefasciatus) genome, CpipJ2 (Jan, 2007)
DanPle_1.0               	172.18.8.76	28141	Monarch butterfly (Danaus plexippus) genome, DanPle_1.0 (Nov, 2011)
Dappu_V1.0               	172.18.8.76	28142	Water flea (Daphnia pulex) genome, V1.0 (Feb, 2011)
DendPond_1.0             	172.18.8.76	28143	Mountain pine beetle (Dendroctonus ponderosae) genome, DendPond_male_1.0 (Apr, 2013)
dwil_caf1                	172.18.8.76	28144	Fruit fly (Drosophila willistoni) genome, dwil_caf1 (Jul, 2008)
Hmel1                    	172.18.8.76	28145	Postman butterfly (Heliconius melpomene) genome, Hmel1 (Feb, 2012)
Helro1                   	172.18.8.76	28146	Californian leech (Helobdella robusta) genome, Helro1 (Dec, 2012)
IscaW1                   	172.18.8.76	28147	Black-legged tick (Ixodes scapularis) genome, IscaW1 (Aug, 2007)
Loa_loa_V3               	172.18.8.76	28148	Eye worm (Loa loa) genome, Loa_loa_V3 (Jan, 2010)
Lotgi1                   	172.18.8.76	28149	Giant owl limpet (Lottia gigantea) genome, Lotgi1 (Jan, 2013)
Msca1                    	172.18.8.76	28150	Humpbacked fly (Megaselia scalaris) genome, Msca1 (Feb, 2013)
MelCinx1.0               	172.18.8.76	28151	Glanville fritillary (Melitaea cinxia) genome, MelCinx1.0 (Jul, 2014)
MneLei                   	172.18.8.76	28152	Sea walnut (Mnemiopsis leidyi) genome, MneLei_Aug2011 (Sep, 2011)
Nvit_2.1                 	172.18.8.76	28153	Parasitic wasp (Nasonia vitripennis) genome, Nvit_2.1 (Nov, 2012)
ASM20922v1               	172.18.8.76	28154	Starlet sea anemone (Nematostella vectensis) genome, ASM20922v1 (Sep, 2007)
Cameroon_v3              	172.18.8.76	28155	Parasitic nematode (Onchocerca volvulus) genome, Cameroon_v3 (Nov, 2013)
PhumU2                   	172.18.8.76	28156	Body louse (Pediculus humanus) genome, PhumU2 (Nov, 2008)
RproC1                   	172.18.8.76	28157	Triatomid bug (Rhodnius prolixus) genome, RproC1 (Dec, 2010)
ASM23792v2               	172.18.8.76	28158	Blood fluke (Schistosoma mansoni) genome, ASM23792v2 (Apr, 2012)
Si_gnG                   	172.18.8.76	28159	Red imported fire ant (Solenopsis invicta) genome, Si_gnG (Feb, 2011)
Smar1                    	172.18.8.76	28160	European centipede (Strigamia maritima) genome, Smar1 (Feb, 2013)
ASM23943v1               	172.18.8.76	28161	Two-spotted spider mite (Tetranychus urticae) genome, ASM23943v1 (Nov, 2011)
Tcas3                    	172.18.8.76	28162	Red flour beetle (Tribolium castaneum) genome, Tcas3 (Feb, 2010)
Tspiralis1               	172.18.8.76	28163	Trichina worm (Trichinella spiralis) genome, Tspiralis1 (Mar, 2011)
ASM15027v1               	172.18.8.76	28164	Trichoplax adhaerens genome, ASM15027v1 (Aug, 2006)
ZooNev1.0                	172.18.8.76	28165	Dampwood termite (Zootermopsis nevadensis) genome, ZooNev1.0 (Jun, 2014)
Bomo_silkbase            	172.18.8.72	28274	Silkworm (Bombyx mori) genome, SilkBase assembly (Nov, 2016)
ASM15162v1               	172.18.8.76	28136	Silkworm (Bombyx mori) genome, ASM15162v1 (Feb, 2013)
bmor1                    	172.18.8.76	28221	Silkworm (Bombyx mori) genome, Bmor1 (Apr, 2008)
h7                       	172.18.8.77	28233	Hydra vulgaris genome, h7 (Aug, 2008)
Hydra_RP_1.0             	172.18.8.77	28234	Hydra vulgaris genome, Hydra_RP_1.0 (Oct, 2009)
Tetth                    	172.18.8.76	28248	Tetrahymena thermophila genome (Jun, 2014)
Tetbo                    	172.18.8.76	28249	Tetrahymena borealis genome (Oct, 2012)
Tetel                    	172.18.8.76	28250	Tetrahymena elliotti genome (Oct, 2012)
Tetma                    	172.18.8.76	28251	Tetrahymena malaccensis genome (Oct, 2012)
img1                     	172.18.8.72	28252	Ichthyophthirius multifiliis macronuclear genome
stylo                    	172.18.8.72	28253	Stylonychia lemnae macronuclear genome
oxy                      	172.18.8.72	28254	Oxytricha trifallax macronuclear genome
oxymic                   	172.18.8.72	28255	Oxytricha trifallax micronuclear genome
YOKOZUNA-1               	172.18.8.72	28267	Tardigrade (Ramazzottius variornatus) YOKOZUNA-1 genome (Sep, 2016)
ASM34733v1               	172.18.8.75	28166	Tausch's goatgrass (Aegilops tauschii) genome, ASM34733v1 (Dec, 2013)
AMTR1.0                  	172.18.8.75	28167	Amborella trichopoda genome, AMTR1.0 (Jan, 2014)
Araly_v.1.0              	172.18.8.75	28168	Lyre-leaved rock-cress (Arabidopsis lyrata) genome, v.1.0 (Dec, 2008)
TAIR10_en                	172.18.8.75	28169	Thale cress (Arabidopsis thaliana) genome, TAIR10 (Sep, 2010)
Bradi_v1.0               	172.18.8.75	28170	Purple false brome (Brachypodium distachyon) genome, v1.0 (Jan, 2009)
Braol_v2.1               	172.18.8.75	28171	Wild cabbage (Brassica oleracea) genome, v2.1
Brapa_v1.5               	172.18.8.72	28273	Chinese cabbage (Brassica rapa ssp. pekinensis) genome, v1.5 (May, 2013)
IVFCAASv1                	172.18.8.75	28172	Chinese cabbage (Brassica rapa ssp. pekinensis) genome, IVFCAASv1 (Aug, 2009)
Chlre_v3.1               	172.18.8.75	28173	Green algae (Chlamydomonas reinhardtii) genome, v3.1 (Nov, 2007)
ASM9120v1                	172.18.8.75	28174	Red alga (Cyanidioschyzon merolae) genome, ASM9120v1 (Nov, 2008)
Soybn_V2.0               	172.18.8.75	28176	Soybean (Glycine max) genome, v2.0 (Nov, 2015)
Soybn_V1.0               	172.18.8.75	28175	Soybean (Glycine max) genome, V1.0 (Jan, 2010)
Horvu_v1                 	172.18.8.75	28177	Barley (Hordeum vulgare) genome, 082214v1 (Mar, 2012)
Lperr_V1.4               	172.18.8.75	28178	Leersia perrieri genome, Lperr_V1.4 (Mar, 2014)
MedtrA17_4.0             	172.18.8.75	28179	Barrel medic (Medicago truncatula) str. A17 genome, MedtrA17_4.0 (Jun, 2014)
MA1                      	172.18.8.75	28180	Banana (Musa acuminata) genome, MA1 (Aug, 2012)
Obart_v1.0               	172.18.8.75	28181	African wild rice (Oryza barthii) genome, Obart_v1.0 (Apr, 2014)
Orybr_v1.4b              	172.18.8.75	28182	African wild rice (Oryza brachyantha) genome, Oryza_brachyantha.v1.4b (May, 2011)
AGI1.1                   	172.18.8.75	28183	African wild rice (Oryza glaberrima) genome, AGI1.1 (May, 2011)
Orygl                    	172.18.8.75	28184	Brazilian wild rice (Oryza glumaepatula) genome, ALNU02000000 (Aug, 2013)
Orylo_v0117              	172.18.8.75	28185	Longstamen rice (Oryza longistaminata) genome, v0117-2013Aug (Aug, 2013)
Oryme_v1.3               	172.18.8.75	28186	Australian wild rice (Oryza meridionalis) genome, Oryza_meridionalis_v1.3 (Oct, 2014)
Oryni                    	172.18.8.75	28187	Indian wild rice (Oryza nivara) genome, AWHD00000000 (Aug, 2013)
Orypu                    	172.18.8.75	28188	Red rice (Oryza punctata) genome, AVCL00000000 (Aug, 2013)
PRJEB4137                	172.18.8.75	28189	Brownbeard rice (Oryza rufipogon) genome, PRJEB4137 (Aug, 2013)
ASM465v1                 	172.18.8.75	28190	Rice (Oryza sativa ssp. indica) genome, ASM465v1 (Jan, 2005)
ASM9206v1                	172.18.8.75	28191	Ostreococcus lucimarinus genome, ASM9206v1 (Jan, 2011)
ASM242v1                 	172.18.8.75	28192	Moss (Physcomitrella patens) genome, ASM242v1 (Jul, 2006)
Poptr_JGI2.0             	172.18.8.75	28193	Western balsam poplar (Populus trichocarpa) genome, JGI2.0 (Jan, 2010)
Prupe1_0                 	172.18.8.75	28194	Peach (Prunus persica) genome, Prupe1_0 (Mar, 2013)
Selml_v1.0               	172.18.8.75	28195	Spikemoss (Selaginella moellendorffii) genome, v1.0 (May, 2011)
Setit_JGIv2.0            	172.18.8.75	28196	Foxtail millet (Setaria italica) genome, JGIv2.0 (Jan, 2012)
SL3.0                    	172.18.8.72	28276	Tomato (Solanum lycopersicum) genome, SL3.00 (Feb, 2017)
SL2.50                   	172.18.8.75	28197	Tomato (Solanum lycopersicum) str. Heinz 1706 genome, SL2.50 (Oct, 2014)
SL2.4                    	172.18.8.72	28275	Tomato (Solanum lycopersicum) genome, SL2.40 (Jan, 2011)
SME_r2.5.1               	172.18.8.72	28211	Eggplant (Solanum melongena) genome, r2.5.1
SolTub_3.0               	172.18.8.75	28198	Potato (Solanum tuberosum) genome, SolTub_3.0 (May, 2011)
Sorbi3                   	172.18.8.75	28200	Sorghum (Sorghum bicolor) genome, NCBIv3 (Jun, 2017)
Sorbi1                   	172.18.8.75	28199	Sorghum (Sorghum bicolor) genome, Sorbi1 (Dec, 2007)
Thecc_20110822           	172.18.8.75	28201	Cacao (Theobroma cacao) genome, Theobroma_cacao_20110822 (May, 2014)
IWGSC1.0                 	172.18.8.75	28202	Wheat (Triticum aestivum) genome, IWGSC1.0+popseq (Nov, 2014)
ASM34745v1               	172.18.8.75	28203	Red wild einkorn (Triticum urartu) genome, ASM34745v1 (Apr, 2013)
IGGP_12x                 	172.18.8.75	28204	Grape (Vitis vinifera) genome, IGGP_12x (Jun, 2011)
AGPv4                    	172.18.8.72	28206	Corn (Zea mays) genome, AGPv4 (Mar, 2016)
AGPv3                    	172.18.8.75	28205	Corn (Zea mays) genome, AGPv3 (Apr, 2013)
Ppatens_251_v3           	172.18.8.74	28287	Moss (Physcomitrella patens) genome, v3.0 (Oct, 2007)
Smoellendorffii_91_v1    	172.18.8.74	28288	Spikemoss (Selaginella moellendorffii) genome, v1.0 (Dec, 2007)
Creinhardtii_281_v5_5    	172.18.8.74	28289	Green algae (Chlamydomonas reinhardtii) genome, v5.5 (May, 2014)
Olucimarinus_231_v2      	172.18.8.74	28290	Ostreococcus lucimarinus genome, v2.0 (Jan, 2011)
Cgrandiflora_v1          	172.18.8.74	28291	Capsella grandiflora genome, v1.1
Crubella_v1              	172.18.8.74	28292	Red shepherd's purse (Capsella rubella) genome, v1.0
Zunla-1_v2.0             	172.18.8.72	28208	Pepper (Capsicum annuum) Zunla-1 genome, release 2.0
Chiltepin_v2.0           	172.18.8.72	28209	Pepper (Capsicum annuum var. glabriusculum) Chiltepin genome, release 2.0
Cpapaya_r.Dec2008        	172.18.8.74	28293	Papaya (Carica papaya) genome, ASGPBv0.4
WCG_v1                   	172.18.8.72	28214	Watermelon (Citrullus lanatus subsp. vulgaris) Charleston Gray genome, v1
W97103_v1                	172.18.8.72	28215	Watermelon (Citrullus lanatus subsp. vulgaris) 97103 genome, v1
Cclementina_v1           	172.18.8.74	28294	Clementine (Citrus clementina) genome, v1.0
Csinensis_v1             	172.18.8.74	28295	Sweet orange (Citrus sinensis) genome, v1.1
CsubellipsoideaC169_v2.0 	172.18.8.74	28296	Coccomyxa subellipsoidea C-169 genome, v2.0
Ccanephora_1.0           	172.18.8.72	28285	Coffee (Coffea canephora) genome, v1.0
CM3.6.1                  	172.18.8.72	28210	Melon (Cucumis melo) genome, v3.6.1 (Jul, 2017)
CM3.5.1                  	172.18.8.72	28279	Melon (Cucumis melo) genome, v3.5.1 (Oct, 2013)
PI183967                 	172.18.8.72	28278	Cucumber (Cucumis sativus) PI183967 genome (Apr, 2013)
ChineseLong_v2           	172.18.8.72	28277	Cucumber (Cucumis sativus) Chinese long genome, v2
Csativus_Gy14            	172.18.8.72	28212	Cucumber (Cucumis sativus) Gy14 genome, v1
Csativus_v1              	172.18.8.74	28297	Cucumber (Cucumis sativus) genome, v1.0
Cmo_v1                   	172.18.8.72	28207	Pumpkin (Cucurbita moschata) Rifu genome, v1
Cp4.1                    	172.18.8.72	28213	Zucchini (Cucurbita pepo subsp. pepo) genome, v4.1
Dcarota_v2.0             	172.18.8.72	28298	Carrot (Daucus carota) genome, v2.0
Egrandis_v2.0            	172.18.8.74	28299	Eucalyptus grandis genome, v2.0
fragaria_vesca_v2.0.a1   	172.18.8.72	28272	Strawberry (Fragaria vesca) genome, v2.0.a1 (Dec, 2014)
Fvesca_v1.1              	172.18.8.74	28300	Strawberry (Fragaria vesca) genome, v1.1
Graimondii_v2.0          	172.18.8.74	28301	Cotton (Gossypium raimondii) genome, v2.1
HanXRQr1.0               	172.18.8.72	28216	Sunflower (Helianthus annuus) genome, HanXRQr1.0 (Dec, 2015)
Lusitatissimum_BGIv1.0   	172.18.8.74	28302	Flax (Linum usitatissimum) genome, v1.0
malus_x_domestica_v1.0p  	172.18.8.72	28271	Apple (Malus domestica) genome, v1.0p (Aug, 2012)
Mdomestica_v1.0          	172.18.8.74	28303	Apple (Malus domestica) genome, v1.0
Mesculenta_v6            	172.18.8.74	28304	Cassava (Manihot esculenta) genome, v6.1
MpusillaCCMP1545_v3.0    	172.18.8.74	28305	Picoplanktonic green alga (Micromonas pusilla) CCMP1545 genome, v3.0
MpusillaRCC299_v3.0      	172.18.8.74	28306	Picoplanktonic green alga (Micromonas pusilla) sp. RCC299 genome, v3.0
Mguttatus_v2.0           	172.18.8.74	28307	Monkey flower (Mimulus guttatus) genome, v2.0
Ppersica_v2.0            	172.18.8.74	28308	Peach (Prunus persica) genome, v2.1
Rcommunis_TIGR.0.1       	172.18.8.74	28309	Castor bean (Ricinus communis) genome, v0.1
Spolyrhiza_v1            	172.18.8.74	28310	Giant duckweed (Spirodela polyrhiza) genome, v2
Vcarteri_v2              	172.18.8.74	28311	Green alga (Volvox carteri) genome, v2.0
Ptrichocarpa_v3.0        	172.18.8.74	28312	Western balsam poplar (Populus trichocarpa) genome, v3.0
TAIR10                   	172.18.8.72	28218	Thale cress (Arabidopsis thaliana) genome, TAIR10 (Nov, 2010)
rice                     	172.18.8.72	28219	Rice (Oryza sativa ssp. japonica) genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)
sorBic                   	172.18.8.72	28220	Sorghum (Sorghum bicolor) genome, Sorghum bicolor v2.1 (May, 2013)
Brana_v4.1               	172.18.8.77	28235	Rapeseed (Brassica napus) genome, Genoscope v4.1 (Aug, 2014)
lotus_r3.0               	172.18.8.77	28236	Japanese trefoil (Lotus japonicus) genome, build 3.0 (Aug, 2015)
BX                       	172.18.8.76	28246	Tobacco (Nicotiana tabacum) BX genome, Ntab-BX (2014)
Niben_v1.0.1             	172.18.8.77	28237	Tobacco (Nicotiana benthamiana) genome, v1.0.1 (Jul, 2014)
adzuki_ver3              	172.18.8.77	28238	Adzuki bean (Vigna angularis) genome, ver3 (Nov, 2011)
RSA_r1.0                 	172.18.8.77	28239	Radish (Raphanus sativus) genome, RSA_r1.0 (May, 2014)
asagao                   	172.18.8.72	28270	Japanese morning glory (Ipomoea nil) Tokyo Kokei Standard (TKS) genome (Sep, 2016)
A_chinensis_Hongyang     	172.18.8.72	28281	Golden kiwi (Actinidia chinensis) genome
Mpolymorpha_3.1          	172.18.8.72	28284	Liverwort (Marchantia polymorpha) genome, JGI 3.1
pombe                    	172.18.8.76	28222	Fission yeast (Schizosaccharomyces pombe) 972h- genome, ASM294v2 (Nov, 2007)
MG8                      	172.18.8.77	28223	Rice blast fungus (Magnaporthe oryzae) 70-15 genome, MG8 (Sep, 2011)
ASM644v2                 	172.18.8.76	28241	Marine yeast (Debaryomyces hansenii) CBS767 genome, ASM644v2 (Feb, 2015)
ASM251v1                 	172.18.8.76	28242	Kluyveromyces yeast (Kluyveromyces lactis) genome, ASM251v1 (Feb, 2015)
KM1777_03                	172.18.8.76	28738	Kluyveromyces yeast (Kluyveromyces marxianus) genome, KM1777_03 (Oct, 2014)
PicPas_Mar2011           	172.18.8.76	28739	Methylotrophic yeast (Komagataella phaffii) CBS 7435 genome, PicPas_Mar2011 (Oct, 2016)
ASM252v1                 	172.18.8.76	28243	Oleaginous yeast (Yarrowia lipolytica) genome, ASM252v1 (May, 2012)
RR                       	172.18.8.76	28244	Wheat head blight fungus (Fusarium graminearum) genome, RR (Nov, 2014)
RHOziaDV1.0              	172.18.8.76	28247	Oleaginous yeast (Rhodotorula toruloides) NP11 genome, RHOziaDV1.0 (Apr, 2013)
ASM24337v1               	172.18.8.72	28282	Torulaspora yeast (Torulaspora delbrueckii) genome, ASM24337v1 (Feb, 2015)
A_oryzae_RIB40           	172.18.8.72	28280	Aspergillus oryzae RIB40 genome, s01-m09-r03 (Oct, 2015)
A_nidulans_FGSC_A4       	172.18.8.72	28256	Aspergillus nidulans (Emericella nidulans) FGSC A4 genome, s10-m04-r06 (Apr, 2016)
A_fumigatus_Af293        	172.18.8.72	28257	Aspergillus fumigatus (Neosartorya fumigata) Af293 genome, s03-m05-r06 (Apr, 2016)
C_glabrata_CBS138        	172.18.8.72	28258	Candida glabrata (Torulopsis glabrata) CBS138 genome, s02-m07-r08 (Jun, 2016)
C_albicans_SC5314        	172.18.8.72	28259	Candida albicans SC5314 genome, Assembly 21, A21-s02-m09-r10 (Feb, 2016)
JCVI_PMFA1_2.0           	172.18.8.72	28260	Penicillium marneffei ATCC 18224 genome, JCVI-PMFA1-2.0 (Oct, 2008)
CC3                      	172.18.8.72	28245	Inky cap fungus (Coprinopsis cinerea) okayama7#130 genome, CC3 (Aug, 2014)
ASM15095v2               	172.18.8.72	28268	Phaeodactylum tricornutum genome, ASM15095v2 (Feb, 2010)
ASM14940v2               	172.18.8.72	28269	Thalassiosira pseudonana genome, ASM14940v2 (May, 2014)
GCA_003118565.1          	172.18.8.72	28847	Madagascar ground gecko (Paroedura picta) genome, Ppicta_assembly_v1 (Mar, 2018)
GCA_003118565.2          	172.18.8.72	28887	Madagascar ground gecko (Paroedura picta) genome, Ppicta_v2.0 (Sep, 2021)
AspL_2604                	172.18.8.72	28013	Aspergillus luchuensis str. RIB 2604 genome, AspL_2604
Akaw_assembly01          	172.18.8.72	28014	Aspergillus kawachii genome, IFO 4308 (Nov, 2011)
GCA_000009725.1          	172.18.8.72	28313	Synechocystis sp. PCC 6803 genome, GCA_000009725.1
GCA_000009705.1          	172.18.8.72	28314	Nostoc sp. PCC 7120 genome, GCA_000009705.1
GCA_000011345.1          	172.18.8.72	28315	Thermosynechococcus elongatus BP-1 genome, GCA_000011345.1
GCA_000010625.1          	172.18.8.72	28316	Microcystis aeruginosa NIES-843 genome, GCA_000010625.1
GCA_000011385.1          	172.18.8.72	28317	Gloeobacter violaceus PCC 7421 genome, GCA_000011385.1
GCA_000006985.1          	172.18.8.72	28318	Chlorobium tepidum TLS genome, GCA_000006985.1
GCA_000007925.1          	172.18.8.72	28319	Prochlorococcus marinus subsp. marinus str. CCMP1375 genome, GCA_000007925.1
GCA_000010065.1          	172.18.8.72	28320	Synechococcus elongatus PCC 6301 genome, GCA_000010065.1
GCA_000011465.1          	172.18.8.72	28321	Prochlorococcus marinus subsp. pastoris str. CCMP1986 genome, GCA_000011465.1
GCA_000011485.1          	172.18.8.72	28322	Prochlorococcus marinus str. MIT 9313 genome, GCA_000011485.1
GCA_000012465.1          	172.18.8.72	28323	Prochlorococcus marinus str. NATL2A genome, GCA_000012465.1
GCA_000012505.1          	172.18.8.72	28324	Synechococcus sp. CC9902 genome, GCA_000012505.1
GCA_000012525.1          	172.18.8.72	28325	Synechococcus elongatus PCC 7942 genome, GCA_000012525.1
GCA_000012625.1          	172.18.8.72	28326	Synechococcus sp. CC9605 genome, GCA_000012625.1
GCA_000012645.1          	172.18.8.72	28327	Prochlorococcus marinus str. MIT 9312 genome, GCA_000012645.1
GCA_000013205.1          	172.18.8.72	28328	Synechococcus sp. JA-3-3Ab genome, GCA_000013205.1
GCA_000013225.1          	172.18.8.72	28329	Cyanobacteria bacterium Yellowstone B-Prime genome, GCA_000013225.1
GCA_000014265.1          	172.18.8.72	28330	Trichodesmium erythraeum IMS101 genome, GCA_000014265.1
GCA_000014585.1          	172.18.8.72	28331	Synechococcus sp. CC9311 genome, GCA_000014585.1
GCA_000015645.1          	172.18.8.72	28332	Prochlorococcus marinus str. AS9601 genome, GCA_000015645.1
GCA_000015665.1          	172.18.8.72	28333	Prochlorococcus marinus str. MIT 9515 genome, GCA_000015665.1
GCA_000015685.1          	172.18.8.72	28334	Prochlorococcus marinus str. NATL1A genome, GCA_000015685.1
GCA_000015705.1          	172.18.8.72	28335	Prochlorococcus marinus str. MIT 9303 genome, GCA_000015705.1
GCA_000015965.1          	172.18.8.72	28336	Prochlorococcus marinus str. MIT 9301 genome, GCA_000015965.1
GCA_000017845.1          	172.18.8.72	28337	Cyanothece sp. ATCC 51142 genome, GCA_000017845.1
GCA_000018065.1          	172.18.8.72	28338	Prochlorococcus marinus str. MIT 9215 genome, GCA_000018065.1
GCA_000018105.1          	172.18.8.72	28339	Acaryochloris marina MBIC11017 genome, GCA_000018105.1
GCA_000018585.1          	172.18.8.72	28340	Prochlorococcus marinus str. MIT 9211 genome, GCA_000018585.1
GCA_000019485.1          	172.18.8.72	28341	Synechococcus sp. PCC 7002 genome, GCA_000019485.1
GCA_000020025.1          	172.18.8.72	28342	Nostoc punctiforme PCC 73102 genome, GCA_000020025.1
GCA_000021805.1          	172.18.8.72	28343	Cyanothece sp. PCC 8801 genome, GCA_000021805.1
GCA_000021825.1          	172.18.8.72	28344	Cyanothece sp. PCC 7424 genome, GCA_000021825.1
GCA_000022045.1          	172.18.8.72	28345	Cyanothece sp. PCC 7425 genome, GCA_000022045.1
GCA_000024045.1          	172.18.8.72	28346	Cyanothece sp. PCC 8802 genome, GCA_000024045.1
GCA_000025125.1          	172.18.8.72	28347	Candidatus Atelocyanobacterium thalassa isolate ALOHA genome, GCA_000025125.1
GCA_000063505.1          	172.18.8.72	28348	Synechococcus sp. WH 7803 genome, GCA_000063505.1
GCA_000063525.1          	172.18.8.72	28349	Synechococcus sp. RCC307 genome, GCA_000063525.1
GCA_000147335.1          	172.18.8.72	28350	Cyanothece sp. PCC 7822 genome, GCA_000147335.1
GCA_000153045.1          	172.18.8.72	28351	Synechococcus sp. WH 5701 genome, GCA_000153045.1
GCA_000153065.1          	172.18.8.72	28352	Synechococcus sp. RS9917 genome, GCA_000153065.1
GCA_000153285.1          	172.18.8.72	28353	Synechococcus sp. WH 7805 genome, GCA_000153285.1
GCA_000153805.1          	172.18.8.72	28354	Synechococcus sp. BL107 genome, GCA_000153805.1
GCA_000153825.1          	172.18.8.72	28355	Synechococcus sp. RS9916 genome, GCA_000153825.1
GCA_000155555.1          	172.18.8.72	28356	Coleofasciculus chthonoplastes PCC 7420 genome, GCA_000155555.1
GCA_000155595.1          	172.18.8.72	28357	Synechococcus sp. PCC 7335 genome, GCA_000155595.1
GCA_000155635.1          	172.18.8.72	28358	Cyanobium sp. PCC 7001 genome, GCA_000155635.1
GCA_000158595.1          	172.18.8.72	28359	Prochlorococcus marinus str. MIT 9202 genome, GCA_000158595.1
GCA_000161795.2          	172.18.8.72	28360	Synechococcus sp. WH 8109 genome, GCA_000161795.2
GCA_000167195.1          	172.18.8.72	28361	Crocosphaera watsonii WH 8501 genome, GCA_000167195.1
GCA_000169095.1          	172.18.8.72	28362	Lyngbya sp. PCC 8106 genome, GCA_000169095.1
GCA_000169135.1          	172.18.8.72	28363	Nodularia spumigena CCY9414 genome, GCA_000169135.1
GCA_000169335.1          	172.18.8.72	28364	Cyanothece sp. CCY0110 genome, GCA_000169335.1
GCA_000173555.1          	172.18.8.72	28365	Arthrospira maxima CS-328 genome, GCA_000173555.1
GCA_000175415.3          	172.18.8.72	28366	Arthrospira platensis str. Paraca genome, GCA_000175415.3
GCA_000175835.1          	172.18.8.72	28367	Cylindrospermopsis raciborskii CS-505 genome, GCA_000175835.1
GCA_000175855.1          	172.18.8.72	28368	Raphidiopsis brookii D9 genome, GCA_000175855.1
GCA_000176895.2          	172.18.8.72	28369	Arthrospira sp. PCC 8005 genome, GCA_000176895.2
GCA_000179235.1          	172.18.8.72	28370	Synechococcus sp. CB0101 genome, GCA_000179235.1
GCA_000179255.1          	172.18.8.72	28371	Synechococcus sp. CB0205 genome, GCA_000179255.1
GCA_000180455.1          	172.18.8.72	28372	Oscillatoria sp. PCC 6506 genome, GCA_000180455.1
GCA_000195775.1          	172.18.8.72	28373	Rhodopseudomonas palustris CGA009 genome, GCA_000195775.1
GCA_000195975.1          	172.18.8.72	28374	Synechococcus sp. WH 8102 genome, GCA_000195975.1
GCA_000196515.1          	172.18.8.72	28375	Nostoc azollae 0708 genome, GCA_000196515.1
GCA_000204075.1          	172.18.8.72	28376	Anabaena variabilis ATCC 29413 genome, GCA_000204075.1
GCA_000210375.1          	172.18.8.72	28377	Arthrospira platensis NIES-39 genome, GCA_000210375.1
GCA_000211815.1          	172.18.8.72	28378	Moorea producens 3L genome, GCA_000211815.1
GCA_000214075.2          	172.18.8.72	28379	Microcoleus vaginatus FGP-2 genome, GCA_000214075.2
GCA_000218705.1          	172.18.8.72	28380	Prochlorococcus marinus bv. HNLC1 genome, GCA_000218705.1
GCA_000218745.1          	172.18.8.72	28381	Prochlorococcus marinus bv. HNLC2 genome, GCA_000218745.1
GCA_000230675.2          	172.18.8.72	28382	Synechococcus sp. WH 8016 genome, GCA_000230675.2
GCA_000231365.2          	172.18.8.72	28383	Fischerella sp. JSC-11 genome, GCA_000231365.2
GCA_000231425.3          	172.18.8.72	28384	Cyanothece sp. ATCC 51472 genome, GCA_000231425.3
GCA_000235665.2          	172.18.8.72	28385	Crocosphaera watsonii WH 0003 genome, GCA_000235665.2
GCA_000238775.2          	172.18.8.72	28386	Acaryochloris sp. CCMEE 5410 genome, GCA_000238775.2
GCA_000252425.1          	172.18.8.72	28387	Prochloron didemni P2-Fiji genome, GCA_000252425.1
GCA_000252465.1          	172.18.8.72	28388	Prochloron didemni P3-Solomon genome, GCA_000252465.1
GCA_000252485.1          	172.18.8.72	28389	Prochloron didemni P4-Papua_New_Guinea genome, GCA_000252485.1
GCA_000270265.1          	172.18.8.72	28390	Synechocystis sp. PCC 6803 genome, GCA_000270265.1
GCA_000284135.1          	172.18.8.72	28391	Synechocystis sp. PCC 6803 substr. GT-I genome, GCA_000284135.1
GCA_000284215.1          	172.18.8.72	28392	Synechocystis sp. PCC 6803 substr. PCC-N genome, GCA_000284215.1
GCA_000284455.1          	172.18.8.72	28393	Synechocystis sp. PCC 6803 substr. PCC-P genome, GCA_000284455.1
GCA_000291785.1          	172.18.8.72	28394	Prochlorococcus sp. W4 genome, GCA_000291785.1
GCA_000291805.1          	172.18.8.72	28395	Prochlorococcus sp. W7 genome, GCA_000291805.1
GCA_000291825.1          	172.18.8.72	28396	Prochlorococcus sp. W8 genome, GCA_000291825.1
GCA_000291845.1          	172.18.8.72	28397	Prochlorococcus sp. W10 genome, GCA_000291845.1
GCA_000291865.1          	172.18.8.72	28398	Prochlorococcus sp. W6 genome, GCA_000291865.1
GCA_000291885.1          	172.18.8.72	28399	Prochlorococcus sp. W2 genome, GCA_000291885.1
GCA_000291905.1          	172.18.8.72	28400	Prochlorococcus sp. W3 genome, GCA_000291905.1
GCA_000291925.1          	172.18.8.72	28401	Prochlorococcus sp. W9 genome, GCA_000291925.1
GCA_000291945.1          	172.18.8.72	28402	Prochlorococcus sp. W11 genome, GCA_000291945.1
GCA_000291965.1          	172.18.8.72	28403	Prochlorococcus sp. W12 genome, GCA_000291965.1
GCA_000291985.1          	172.18.8.72	28404	Prochlorococcus sp. W5 genome, GCA_000291985.1
GCA_000297435.1          	172.18.8.72	28405	Microcystis sp. T1-4 genome, GCA_000297435.1
GCA_000300115.1          	172.18.8.72	28406	Tolypothrix sp. PCC 7601 genome, GCA_000300115.1
GCA_000307915.1          	172.18.8.72	28407	Arthrospira platensis C1 genome, GCA_000307915.1
GCA_000307995.2          	172.18.8.72	28408	Microcystis aeruginosa PCC 9432 genome, GCA_000307995.2
GCA_000309385.1          	172.18.8.72	28409	Nodosilinea nodulosa PCC 7104 genome, GCA_000309385.1
GCA_000309945.1          	172.18.8.72	28410	Oscillatoriales cyanobacterium JSC-12 genome, GCA_000309945.1
GCA_000312165.1          	172.18.8.72	28411	Microcystis aeruginosa PCC 9717 genome, GCA_000312165.1
GCA_000312185.1          	172.18.8.72	28412	Microcystis aeruginosa PCC 9443 genome, GCA_000312185.1
GCA_000312205.1          	172.18.8.72	28413	Microcystis aeruginosa PCC 7941 genome, GCA_000312205.1
GCA_000312225.1          	172.18.8.72	28414	Microcystis aeruginosa PCC 9807 genome, GCA_000312225.1
GCA_000312245.1          	172.18.8.72	28415	Microcystis aeruginosa PCC 9808 genome, GCA_000312245.1
GCA_000312265.1          	172.18.8.72	28416	Microcystis aeruginosa PCC 9809 genome, GCA_000312265.1
GCA_000312285.1          	172.18.8.72	28417	Microcystis aeruginosa PCC 9701 genome, GCA_000312285.1
GCA_000312705.1          	172.18.8.72	28418	Anabaena sp. 90 genome, GCA_000312705.1
GCA_000312725.1          	172.18.8.72	28419	Microcystis aeruginosa PCC 9806 genome, GCA_000312725.1
GCA_000314005.1          	172.18.8.72	28420	Spirulina subsalsa PCC 9445 genome, GCA_000314005.1
GCA_000315565.1          	172.18.8.72	28421	Mastigocladopsis repens PCC 10914 genome, GCA_000315565.1
GCA_000315585.1          	172.18.8.72	28422	Fischerella sp. PCC 9339 genome, GCA_000315585.1
GCA_000316115.1          	172.18.8.72	28423	Leptolyngbya sp. PCC 7375 genome, GCA_000316115.1
GCA_000316515.1          	172.18.8.72	28424	Cyanobium gracile PCC 6307 genome, GCA_000316515.1
GCA_000316575.1          	172.18.8.72	28425	Calothrix sp. PCC 7507 genome, GCA_000316575.1
GCA_000316605.1          	172.18.8.72	28426	Leptolyngbya sp. PCC 7376 genome, GCA_000316605.1
GCA_000316625.1          	172.18.8.72	28427	Nostoc sp. PCC 7107 genome, GCA_000316625.1
GCA_000316645.1          	172.18.8.72	28428	Nostoc sp. PCC 7524 genome, GCA_000316645.1
GCA_000316665.1          	172.18.8.72	28429	Rivularia sp. PCC 7116 genome, GCA_000316665.1
GCA_000316685.1          	172.18.8.72	28430	Synechococcus sp. PCC 6312 genome, GCA_000316685.1
GCA_000317025.1          	172.18.8.72	28431	Pleurocapsa sp. PCC 7327 genome, GCA_000317025.1
GCA_000317045.1          	172.18.8.72	28432	Geitlerinema sp. PCC 7407 genome, GCA_000317045.1
GCA_000317065.1          	172.18.8.72	28433	Pseudanabaena sp. PCC 7367 genome, GCA_000317065.1
GCA_000317085.1          	172.18.8.72	28434	Synechococcus sp. PCC 7502 genome, GCA_000317085.1
GCA_000317105.1          	172.18.8.72	28435	Oscillatoria acuminata PCC 6304 genome, GCA_000317105.1
GCA_000317125.1          	172.18.8.72	28436	Chroococcidiopsis thermalis PCC 7203 genome, GCA_000317125.1
GCA_000317145.1          	172.18.8.72	28437	Chamaesiphon minutus PCC 6605 genome, GCA_000317145.1
GCA_000317205.1          	172.18.8.72	28438	Fischerella muscicola PCC 7414 genome, GCA_000317205.1
GCA_000317225.1          	172.18.8.72	28439	Fischerella thermalis PCC 7521 genome, GCA_000317225.1
GCA_000317245.1          	172.18.8.72	28440	Fischerella muscicola SAG 1427-1 genome, GCA_000317245.1
GCA_000317265.1          	172.18.8.72	28441	Chlorogloeopsis fritschii PCC 9212 genome, GCA_000317265.1
GCA_000317285.1          	172.18.8.72	28442	Chlorogloeopsis fritschii PCC 6912 genome, GCA_000317285.1
GCA_000317435.1          	172.18.8.72	28443	Calothrix sp. PCC 6303 genome, GCA_000317435.1
GCA_000317475.1          	172.18.8.72	28444	Oscillatoria nigro-viridis PCC 7112 genome, GCA_000317475.1
GCA_000317495.1          	172.18.8.72	28445	Crinalium epipsammum PCC 9333 genome, GCA_000317495.1
GCA_000317515.1          	172.18.8.72	28446	Microcoleus sp. PCC 7113 genome, GCA_000317515.1
GCA_000317535.1          	172.18.8.72	28447	Cylindrospermum stagnale PCC 7417 genome, GCA_000317535.1
GCA_000317555.1          	172.18.8.72	28448	Gloeocapsa sp. PCC 7428 genome, GCA_000317555.1
GCA_000317575.1          	172.18.8.72	28449	Stanieria cyanosphaera PCC 7437 genome, GCA_000317575.1
GCA_000317615.1          	172.18.8.72	28450	Dactylococcopsis salina PCC 8305 genome, GCA_000317615.1
GCA_000317635.1          	172.18.8.72	28451	Halothece sp. PCC 7418 genome, GCA_000317635.1
GCA_000317655.1          	172.18.8.72	28452	Cyanobacterium stanieri PCC 7202 genome, GCA_000317655.1
GCA_000317675.1          	172.18.8.72	28453	Cyanobacterium aponinum PCC 10605 genome, GCA_000317675.1
GCA_000317695.1          	172.18.8.72	28454	Anabaena cylindrica PCC 7122 genome, GCA_000317695.1
GCA_000330925.1          	172.18.8.72	28455	Microcystis aeruginosa TAIHU98 genome, GCA_000330925.1
GCA_000331305.1          	172.18.8.72	28456	Calothrix sp. PCC 7103 genome, GCA_000331305.1
GCA_000332035.1          	172.18.8.72	28457	Gloeocapsa sp. PCC 73106 genome, GCA_000332035.1
GCA_000332055.1          	172.18.8.72	28458	Xenococcus sp. PCC 7305 genome, GCA_000332055.1
GCA_000332075.2          	172.18.8.72	28459	Synechocystis sp. PCC 7509 genome, GCA_000332075.2
GCA_000332095.2          	172.18.8.72	28460	Leptolyngbya sp. PCC 6406 genome, GCA_000332095.2
GCA_000332135.1          	172.18.8.72	28461	Anabaena sp. PCC 7108 genome, GCA_000332135.1
GCA_000332155.1          	172.18.8.72	28462	Kamptonema formosum PCC 6407 genome, GCA_000332155.1
GCA_000332175.1          	172.18.8.72	28463	Pseudanabaena sp. PCC 6802 genome, GCA_000332175.1
GCA_000332195.1          	172.18.8.72	28464	Pleurocapsa sp. PCC 7319 genome, GCA_000332195.1
GCA_000332215.1          	172.18.8.72	28465	Pseudanabaena biceps PCC 7429 genome, GCA_000332215.1
GCA_000332235.1          	172.18.8.72	28466	Geminocystis herdmanii PCC 6308 genome, GCA_000332235.1
GCA_000332255.1          	172.18.8.72	28467	cyanobacterium PCC 7702 genome, GCA_000332255.1
GCA_000332275.1          	172.18.8.72	28468	Synechococcus sp. PCC 7336 genome, GCA_000332275.1
GCA_000332295.1          	172.18.8.72	28469	Microchaete sp. PCC 7126 genome, GCA_000332295.1
GCA_000332315.1          	172.18.8.72	28470	Prochlorothrix hollandica PCC 9006 genome, GCA_000332315.1
GCA_000332335.1          	172.18.8.72	28471	Oscillatoria sp. PCC 10802 genome, GCA_000332335.1
GCA_000332355.1          	172.18.8.72	28472	Geitlerinema sp. PCC 7105 genome, GCA_000332355.1
GCA_000332585.1          	172.18.8.72	28473	Microcystis aeruginosa DIANCHI905 genome, GCA_000332585.1
GCA_000340565.3          	172.18.8.72	28474	Nodularia spumigena CCY9414 genome, GCA_000340565.3
GCA_000340785.1          	172.18.8.72	28475	Synechocystis sp. PCC 6803 genome, GCA_000340785.1
GCA_000341585.2          	172.18.8.72	28476	Prochlorothrix hollandica PCC 9006 genome, GCA_000341585.2
GCA_000346485.1          	172.18.8.72	28477	Scytonema hofmanni PCC 7110 genome, GCA_000346485.1
GCA_000350105.1          	172.18.8.72	28478	Richelia intracellularis HH01 genome, GCA_000350105.1
GCA_000350125.1          	172.18.8.72	28479	Richelia intracellularis HM01 genome, GCA_000350125.1
GCA_000353285.1          	172.18.8.72	28480	Leptolyngbya boryana PCC 6306 genome, GCA_000353285.1
GCA_000380225.1          	172.18.8.72	28481	filamentous cyanobacterium ESFC-1 genome, GCA_000380225.1
GCA_000412595.1          	172.18.8.72	28482	Microcystis aeruginosa SPC777 genome, GCA_000412595.1
GCA_000426905.1          	172.18.8.72	28483	Dolichospermum circinale AWQC131C genome, GCA_000426905.1
GCA_000426925.1          	172.18.8.72	28484	Dolichospermum circinale AWQC310F genome, GCA_000426925.1
GCA_000447295.1          	172.18.8.72	28485	Fischerella sp. PCC 9431 genome, GCA_000447295.1
GCA_000464665.1          	172.18.8.72	28486	Planktothrix agardhii NIVA-CYA 15 genome, GCA_000464665.1
GCA_000464725.1          	172.18.8.72	28487	Planktothrix agardhii NIVA-CYA 34 genome, GCA_000464725.1
GCA_000464745.1          	172.18.8.72	28488	Planktothrix mougeotii NIVA-CYA 405 genome, GCA_000464745.1
GCA_000464765.1          	172.18.8.72	28489	Planktothrix prolifica NIVA-CYA 406 genome, GCA_000464765.1
GCA_000464785.1          	172.18.8.72	28490	Planktothrix rubescens NIVA-CYA 407 genome, GCA_000464785.1
GCA_000464805.1          	172.18.8.72	28491	Planktothrix prolifica NIVA-CYA 540 genome, GCA_000464805.1
GCA_000464825.1          	172.18.8.72	28492	Planktothrix agardhii NIVA-CYA 56/3 genome, GCA_000464825.1
GCA_000464845.1          	172.18.8.72	28493	Planktothrix prolifica NIVA-CYA 98 genome, GCA_000464845.1
GCA_000472885.1          	172.18.8.72	28494	Mastigocoleus testarum BC008 genome, GCA_000472885.1
GCA_000473895.1          	172.18.8.72	28495	Rubidibacter lacunae KORDI 51-2 genome, GCA_000473895.1
GCA_000478195.2          	172.18.8.72	28496	Lyngbya aestuarii BL J genome, GCA_000478195.2
GCA_000478825.2          	172.18.8.72	28497	Synechocystis sp. PCC 6714 genome, GCA_000478825.2
GCA_000482245.1          	172.18.8.72	28498	Leptolyngbya sp. Heron Island J genome, GCA_000482245.1
GCA_000484535.1          	172.18.8.72	28499	Gloeobacter kilaueensis JS1 genome, GCA_000484535.1
GCA_000485815.1          	172.18.8.72	28500	Synechococcus sp. NKBG15041c genome, GCA_000485815.1
GCA_000505665.1          	172.18.8.72	28501	Thermosynechococcus sp. NK55a genome, GCA_000505665.1
GCA_000515235.1          	172.18.8.72	28502	Synechococcus sp. CC9616 genome, GCA_000515235.1
GCA_000517105.1          	172.18.8.72	28503	Fischerella sp. PCC 9605 genome, GCA_000517105.1
GCA_000521175.1          	172.18.8.72	28504	Aphanizomenon flos-aquae NIES-81 genome, GCA_000521175.1
GCA_000582685.1          	172.18.8.72	28505	Scytonema hofmanni UTEX 2349 genome, GCA_000582685.1
GCA_000586015.1          	172.18.8.72	28506	Candidatus Synechococcus spongiarum SH4 genome, GCA_000586015.1
GCA_000599945.1          	172.18.8.72	28507	Microcystis aeruginosa PCC 7005 genome, GCA_000599945.1
GCA_000613065.1          	172.18.8.72	28508	Richelia intracellularis genome, GCA_000613065.1
GCA_000633975.1          	172.18.8.72	28509	Prochlorococcus sp. scB241_526B17 genome, GCA_000633975.1
GCA_000633995.1          	172.18.8.72	28510	Prochlorococcus sp. scB241_526K3 genome, GCA_000633995.1
GCA_000634015.1          	172.18.8.72	28511	Prochlorococcus sp. scB241_526N9 genome, GCA_000634015.1
GCA_000634035.1          	172.18.8.72	28512	Prochlorococcus sp. scB241_527E14 genome, GCA_000634035.1
GCA_000634055.1          	172.18.8.72	28513	Prochlorococcus sp. scB241_527N11 genome, GCA_000634055.1
GCA_000634075.1          	172.18.8.72	28514	Prochlorococcus sp. scB241_528J14 genome, GCA_000634075.1
GCA_000634095.1          	172.18.8.72	28515	Prochlorococcus sp. scB241_528J8 genome, GCA_000634095.1
GCA_000634115.1          	172.18.8.72	28516	Prochlorococcus sp. scB241_528O2 genome, GCA_000634115.1
GCA_000634135.1          	172.18.8.72	28517	Prochlorococcus sp. scB241_528P14 genome, GCA_000634135.1
GCA_000634155.1          	172.18.8.72	28518	Prochlorococcus sp. scB241_529C4 genome, GCA_000634155.1
GCA_000634175.1          	172.18.8.72	28519	Prochlorococcus sp. scB241_529D18 genome, GCA_000634175.1
GCA_000634195.1          	172.18.8.72	28520	Prochlorococcus sp. scB243_495D8 genome, GCA_000634195.1
GCA_000634215.1          	172.18.8.72	28521	Prochlorococcus sp. scB243_495L20 genome, GCA_000634215.1
GCA_000634235.1          	172.18.8.72	28522	Prochlorococcus sp. scB243_495N16 genome, GCA_000634235.1
GCA_000634255.1          	172.18.8.72	28523	Prochlorococcus sp. scB243_496A2 genome, GCA_000634255.1
GCA_000634275.1          	172.18.8.72	28524	Prochlorococcus sp. scB243_497J18 genome, GCA_000634275.1
GCA_000634295.1          	172.18.8.72	28525	Prochlorococcus sp. scB243_498A3 genome, GCA_000634295.1
GCA_000634315.1          	172.18.8.72	28526	Prochlorococcus sp. scB243_498J20 genome, GCA_000634315.1
GCA_000634335.1          	172.18.8.72	28527	Prochlorococcus sp. scB243_498N4 genome, GCA_000634335.1
GCA_000634355.1          	172.18.8.72	28528	Prochlorococcus sp. scB243_498N8 genome, GCA_000634355.1
GCA_000634375.1          	172.18.8.72	28529	Prochlorococcus sp. scB245a_518A17 genome, GCA_000634375.1
GCA_000634395.1          	172.18.8.72	28530	Prochlorococcus sp. scB245a_518D8 genome, GCA_000634395.1
GCA_000634415.1          	172.18.8.72	28531	Prochlorococcus sp. scB245a_519A13 genome, GCA_000634415.1
GCA_000634435.1          	172.18.8.72	28532	Prochlorococcus sp. scB245a_519B7 genome, GCA_000634435.1
GCA_000634455.1          	172.18.8.72	28533	Prochlorococcus sp. scB245a_519O21 genome, GCA_000634455.1
GCA_000634475.1          	172.18.8.72	28534	Prochlorococcus sp. scB245a_520B18 genome, GCA_000634475.1
GCA_000634495.1          	172.18.8.72	28535	Prochlorococcus sp. scB245a_520D2 genome, GCA_000634495.1
GCA_000634515.1          	172.18.8.72	28536	Prochlorococcus sp. scB245a_520K10 genome, GCA_000634515.1
GCA_000634535.1          	172.18.8.72	28537	Prochlorococcus sp. scB245a_520M11 genome, GCA_000634535.1
GCA_000634555.2          	172.18.8.72	28538	Prochlorococcus sp. scB245a_521A19 genome, GCA_000634555.2
GCA_000634575.1          	172.18.8.72	28539	Prochlorococcus sp. scB245a_521N3 genome, GCA_000634575.1
GCA_000634595.1          	172.18.8.72	28540	Prochlorococcus sp. scB245a_521O23 genome, GCA_000634595.1
GCA_000634615.1          	172.18.8.72	28541	Prochlorococcus sp. scB241_526B19 genome, GCA_000634615.1
GCA_000634635.1          	172.18.8.72	28542	Prochlorococcus sp. scB241_526B22 genome, GCA_000634635.1
GCA_000634655.1          	172.18.8.72	28543	Prochlorococcus sp. scB241_526N5 genome, GCA_000634655.1
GCA_000634675.1          	172.18.8.72	28544	Prochlorococcus sp. scB241_527E15 genome, GCA_000634675.1
GCA_000634695.1          	172.18.8.72	28545	Prochlorococcus sp. scB241_527L15 genome, GCA_000634695.1
GCA_000634715.1          	172.18.8.72	28546	Prochlorococcus sp. scB241_528K19 genome, GCA_000634715.1
GCA_000634735.1          	172.18.8.72	28547	Prochlorococcus sp. scB241_528N17 genome, GCA_000634735.1
GCA_000634755.1          	172.18.8.72	28548	Prochlorococcus sp. scB241_528N20 genome, GCA_000634755.1
GCA_000634775.1          	172.18.8.72	28549	Prochlorococcus sp. scB241_528N8 genome, GCA_000634775.1
GCA_000634795.1          	172.18.8.72	28550	Prochlorococcus sp. scB241_529J15 genome, GCA_000634795.1
GCA_000634815.1          	172.18.8.72	28551	Prochlorococcus sp. scB243_495G23 genome, GCA_000634815.1
GCA_000634835.1          	172.18.8.72	28552	Prochlorococcus sp. scB243_495I8 genome, GCA_000634835.1
GCA_000634855.1          	172.18.8.72	28553	Prochlorococcus sp. scB243_495N4 genome, GCA_000634855.1
GCA_000634875.1          	172.18.8.72	28554	Prochlorococcus sp. scB243_495P20 genome, GCA_000634875.1
GCA_000634895.1          	172.18.8.72	28555	Prochlorococcus sp. scB243_496E10 genome, GCA_000634895.1
GCA_000634915.1          	172.18.8.72	28556	Prochlorococcus sp. scB243_496G15 genome, GCA_000634915.1
GCA_000634935.1          	172.18.8.72	28557	Prochlorococcus sp. scB243_497I20 genome, GCA_000634935.1
GCA_000634955.1          	172.18.8.72	28558	Prochlorococcus sp. scB243_497N18 genome, GCA_000634955.1
GCA_000634975.1          	172.18.8.72	28559	Prochlorococcus sp. scB243_498B22 genome, GCA_000634975.1
GCA_000634995.1          	172.18.8.72	28560	Prochlorococcus sp. scB243_498C16 genome, GCA_000634995.1
GCA_000635015.1          	172.18.8.72	28561	Prochlorococcus sp. scB243_498I20 genome, GCA_000635015.1
GCA_000635035.1          	172.18.8.72	28562	Prochlorococcus sp. scB243_498L10 genome, GCA_000635035.1
GCA_000635055.1          	172.18.8.72	28563	Prochlorococcus sp. scB245a_518A6 genome, GCA_000635055.1
GCA_000635075.1          	172.18.8.72	28564	Prochlorococcus sp. scB245a_518E10 genome, GCA_000635075.1
GCA_000635095.1          	172.18.8.72	28565	Prochlorococcus sp. scB245a_518J7 genome, GCA_000635095.1
GCA_000635115.1          	172.18.8.72	28566	Prochlorococcus sp. scB245a_518K17 genome, GCA_000635115.1
GCA_000635135.1          	172.18.8.72	28567	Prochlorococcus sp. scB245a_518O7 genome, GCA_000635135.1
GCA_000635155.1          	172.18.8.72	28568	Prochlorococcus sp. scB245a_519C7 genome, GCA_000635155.1
GCA_000635175.1          	172.18.8.72	28569	Prochlorococcus sp. scB245a_519E23 genome, GCA_000635175.1
GCA_000635195.1          	172.18.8.72	28570	Prochlorococcus sp. scB245a_519L21 genome, GCA_000635195.1
GCA_000635215.1          	172.18.8.72	28571	Prochlorococcus sp. scB245a_521C8 genome, GCA_000635215.1
GCA_000635235.1          	172.18.8.72	28572	Prochlorococcus sp. scB245a_521K15 genome, GCA_000635235.1
GCA_000635255.1          	172.18.8.72	28573	Prochlorococcus sp. scB245a_521O20 genome, GCA_000635255.1
GCA_000635275.1          	172.18.8.72	28574	Prochlorococcus sp. scB241_526D20 genome, GCA_000635275.1
GCA_000635295.1          	172.18.8.72	28575	Prochlorococcus sp. scB241_527G5 genome, GCA_000635295.1
GCA_000635315.1          	172.18.8.72	28576	Prochlorococcus sp. scB241_527I9 genome, GCA_000635315.1
GCA_000635335.1          	172.18.8.72	28577	Prochlorococcus sp. scB241_527L16 genome, GCA_000635335.1
GCA_000635355.1          	172.18.8.72	28578	Prochlorococcus sp. scB241_527L22 genome, GCA_000635355.1
GCA_000635375.1          	172.18.8.72	28579	Prochlorococcus sp. scB241_527P5 genome, GCA_000635375.1
GCA_000635395.1          	172.18.8.72	28580	Prochlorococcus sp. scB241_528P18 genome, GCA_000635395.1
GCA_000635415.1          	172.18.8.72	28581	Prochlorococcus sp. scB241_529B19 genome, GCA_000635415.1
GCA_000635435.1          	172.18.8.72	28582	Prochlorococcus sp. scB241_529J11 genome, GCA_000635435.1
GCA_000635455.1          	172.18.8.72	28583	Prochlorococcus sp. scB241_529J16 genome, GCA_000635455.1
GCA_000635475.1          	172.18.8.72	28584	Prochlorococcus sp. scB241_529O19 genome, GCA_000635475.1
GCA_000635495.1          	172.18.8.72	28585	Prochlorococcus sp. scB243_495K23 genome, GCA_000635495.1
GCA_000635515.1          	172.18.8.72	28586	Prochlorococcus sp. scB243_495N3 genome, GCA_000635515.1
GCA_000635535.1          	172.18.8.72	28587	Prochlorococcus sp. scB243_496M6 genome, GCA_000635535.1
GCA_000635555.1          	172.18.8.72	28588	Prochlorococcus sp. scB243_496N4 genome, GCA_000635555.1
GCA_000635575.1          	172.18.8.72	28589	Prochlorococcus sp. scB243_497E17 genome, GCA_000635575.1
GCA_000635595.1          	172.18.8.72	28590	Prochlorococcus sp. scB243_498B23 genome, GCA_000635595.1
GCA_000635615.1          	172.18.8.72	28591	Prochlorococcus sp. scB243_498F21 genome, GCA_000635615.1
GCA_000635635.1          	172.18.8.72	28592	Prochlorococcus sp. scB243_498G3 genome, GCA_000635635.1
GCA_000635655.1          	172.18.8.72	28593	Prochlorococcus sp. scB243_498M14 genome, GCA_000635655.1
GCA_000635675.1          	172.18.8.72	28594	Prochlorococcus sp. scB243_498P15 genome, GCA_000635675.1
GCA_000635695.1          	172.18.8.72	28595	Prochlorococcus sp. scB243_498P3 genome, GCA_000635695.1
GCA_000635715.1          	172.18.8.72	28596	Prochlorococcus sp. scB245a_518I6 genome, GCA_000635715.1
GCA_000635735.1          	172.18.8.72	28597	Prochlorococcus sp. scB245a_519D13 genome, GCA_000635735.1
GCA_000635755.1          	172.18.8.72	28598	Prochlorococcus sp. scB245a_519G16 genome, GCA_000635755.1
GCA_000635775.1          	172.18.8.72	28599	Prochlorococcus sp. scB245a_519O11 genome, GCA_000635775.1
GCA_000635795.1          	172.18.8.72	28600	Prochlorococcus sp. scB245a_520E22 genome, GCA_000635795.1
GCA_000635815.1          	172.18.8.72	28601	Prochlorococcus sp. scB245a_520F22 genome, GCA_000635815.1
GCA_000635835.1          	172.18.8.72	28602	Prochlorococcus sp. scB245a_521B10 genome, GCA_000635835.1
GCA_000635855.1          	172.18.8.72	28603	Prochlorococcus sp. scB245a_521M10 genome, GCA_000635855.1
GCA_000635875.1          	172.18.8.72	28604	Prochlorococcus sp. scB245a_521N5 genome, GCA_000635875.1
GCA_000708525.1          	172.18.8.72	28605	Cyanobium sp. CACIAM 14 genome, GCA_000708525.1
GCA_000710505.1          	172.18.8.72	28606	Planktothrix agardhii NIVA-CYA 126/8 genome, GCA_000710505.1
GCA_000715475.1          	172.18.8.72	28607	Synechococcus sp. NKBG042902 genome, GCA_000715475.1
GCA_000733415.1          	172.18.8.72	28608	Leptolyngbya sp. JSC-1 genome, GCA_000733415.1
GCA_000734895.2          	172.18.8.72	28609	Calothrix sp. 336/3 genome, GCA_000734895.2
GCA_000737535.1          	172.18.8.72	28610	Synechococcus sp. KORDI-100 genome, GCA_000737535.1
GCA_000737575.1          	172.18.8.72	28611	Synechococcus sp. KORDI-49 genome, GCA_000737575.1
GCA_000737595.1          	172.18.8.72	28612	Synechococcus sp. KORDI-52 genome, GCA_000737595.1
GCA_000737945.1          	172.18.8.72	28613	Candidatus Atelocyanobacterium thalassa isolate SIO64986 genome, GCA_000737945.1
GCA_000756305.1          	172.18.8.72	28614	Myxosarcina sp. GI1 genome, GCA_000756305.1
GCA_000757845.1          	172.18.8.72	28615	Prochlorococcus sp. MIT 0604 genome, GCA_000757845.1
GCA_000757865.1          	172.18.8.72	28616	Prochlorococcus sp. MIT 0801 genome, GCA_000757865.1
GCA_000759855.1          	172.18.8.72	28617	Prochlorococcus marinus str. MIT 9107 genome, GCA_000759855.1
GCA_000759865.1          	172.18.8.72	28618	Prochlorococcus marinus str. MIT 9116 genome, GCA_000759865.1
GCA_000759875.1          	172.18.8.72	28619	Prochlorococcus marinus str. EQPAC1 genome, GCA_000759875.1
GCA_000759885.1          	172.18.8.72	28620	Prochlorococcus marinus str. GP2 genome, GCA_000759885.1
GCA_000759935.1          	172.18.8.72	28621	Prochlorococcus marinus str. MIT 9123 genome, GCA_000759935.1
GCA_000759955.1          	172.18.8.72	28622	Prochlorococcus marinus str. MIT 9201 genome, GCA_000759955.1
GCA_000759975.1          	172.18.8.72	28623	Prochlorococcus marinus str. MIT 9302 genome, GCA_000759975.1
GCA_000760015.1          	172.18.8.72	28624	Prochlorococcus marinus str. MIT 9311 genome, GCA_000760015.1
GCA_000760035.1          	172.18.8.72	28625	Prochlorococcus marinus str. MIT 9314 genome, GCA_000760035.1
GCA_000760055.1          	172.18.8.72	28626	Prochlorococcus marinus str. MIT 9321 genome, GCA_000760055.1
GCA_000760075.1          	172.18.8.72	28627	Prochlorococcus marinus str. MIT 9322 genome, GCA_000760075.1
GCA_000760095.1          	172.18.8.72	28628	Prochlorococcus marinus str. MIT 9401 genome, GCA_000760095.1
GCA_000760115.1          	172.18.8.72	28629	Prochlorococcus marinus str. SB genome, GCA_000760115.1
GCA_000760155.1          	172.18.8.72	28630	Prochlorococcus marinus str. LG genome, GCA_000760155.1
GCA_000760175.1          	172.18.8.72	28631	Prochlorococcus sp. MIT 0601 genome, GCA_000760175.1
GCA_000760195.1          	172.18.8.72	28632	Prochlorococcus sp. MIT 0602 genome, GCA_000760195.1
GCA_000760215.1          	172.18.8.72	28633	Prochlorococcus sp. MIT 0603 genome, GCA_000760215.1
GCA_000760235.1          	172.18.8.72	28634	Prochlorococcus marinus str. PAC1 genome, GCA_000760235.1
GCA_000760255.1          	172.18.8.72	28635	Prochlorococcus marinus str. SS2 genome, GCA_000760255.1
GCA_000760275.1          	172.18.8.72	28636	Prochlorococcus marinus str. SS35 genome, GCA_000760275.1
GCA_000760295.1          	172.18.8.72	28637	Prochlorococcus sp. MIT 0701 genome, GCA_000760295.1
GCA_000760315.1          	172.18.8.72	28638	Prochlorococcus sp. MIT 0702 genome, GCA_000760315.1
GCA_000760335.1          	172.18.8.72	28639	Prochlorococcus sp. MIT 0703 genome, GCA_000760335.1
GCA_000760355.1          	172.18.8.72	28640	Prochlorococcus marinus str. SS51 genome, GCA_000760355.1
GCA_000760375.1          	172.18.8.72	28641	Prochlorococcus sp. SS52 genome, GCA_000760375.1
GCA_000760695.2          	172.18.8.72	28642	Tolypothrix bouteillei VB521301 genome, GCA_000760695.2
GCA_000763385.1          	172.18.8.72	28643	Leptolyngbya sp. KIOST-1 genome, GCA_000763385.1
GCA_000775285.1          	172.18.8.72	28644	Neosynechococcus sphagnicola sy1 genome, GCA_000775285.1
GCA_000787675.1          	172.18.8.72	28645	Microcystis aeruginosa NIES-44 genome, GCA_000787675.1
GCA_000789435.1          	172.18.8.72	28646	Aphanizomenon flos-aquae 2012/KM1/D3 genome, GCA_000789435.1
GCA_000817325.1          	172.18.8.72	28647	Synechococcus sp. UTEX 2973 genome, GCA_000817325.1
GCA_000817735.1          	172.18.8.72	28648	Scytonema millei VB511283 genome, GCA_000817735.1
GCA_000817745.1          	172.18.8.72	28649	Aphanocapsa montana BDHKU210001 genome, GCA_000817745.1
GCA_000817775.1          	172.18.8.72	28650	Lyngbya confervoides BDU141951 genome, GCA_000817775.1
GCA_000817785.1          	172.18.8.72	28651	Hassallia byssoidea VB512170 genome, GCA_000817785.1
GCA_000828075.1          	172.18.8.72	28652	Tolypothrix campylonemoides VB511288 genome, GCA_000828075.1
GCA_000828085.1          	172.18.8.72	28653	Scytonema tolypothrichoides VB-61278 genome, GCA_000828085.1
GCA_000829235.1          	172.18.8.72	28654	cyanobacterium endosymbiont of Epithemia turgida isolate EtSB Lake Yunoko genome, GCA_000829235.1
GCA_000934435.1          	172.18.8.72	28655	Mastigocladus laminosus UU774 genome, GCA_000934435.1
GCA_000952155.1          	172.18.8.72	28656	Chroococcales cyanobacterium CENA595 genome, GCA_000952155.1
GCA_000963755.2          	172.18.8.72	28657	Trichodesmium erythraeum 21-75 genome, GCA_000963755.2
GCA_000972705.2          	172.18.8.72	28658	Limnoraphis robusta CS-951 genome, GCA_000972705.2
GCA_000973065.1          	172.18.8.72	28659	Arthrospira sp. PCC 8005 genome, GCA_000973065.1
GCA_000974245.1          	172.18.8.72	28660	Arthrospira sp. TJSD091 genome, GCA_000974245.1
GCA_000981785.1          	172.18.8.72	28661	Microcystis aeruginosa NIES-2549 genome, GCA_000981785.1
GCA_000987385.1          	172.18.8.72	28662	Trichodesmium thiebautii H9-4 genome, GCA_000987385.1
GCA_001007625.1          	172.18.8.72	28663	Candidatus Synechococcus spongiarum 142 genome, GCA_001007625.1
GCA_001007635.1          	172.18.8.72	28664	Candidatus Synechococcus spongiarum 15L genome, GCA_001007635.1
GCA_001007665.1          	172.18.8.72	28665	Candidatus Synechococcus spongiarum SP3 genome, GCA_001007665.1
GCA_001039265.1          	172.18.8.72	28666	Synechococcus sp. GFB01 genome, GCA_001039265.1
GCA_001039555.1          	172.18.8.72	28667	Crocosphaera watsonii WH 8502 genome, GCA_001039555.1
GCA_001039615.1          	172.18.8.72	28668	Crocosphaera watsonii WH 0401 genome, GCA_001039615.1
GCA_001039635.1          	172.18.8.72	28669	Crocosphaera watsonii WH 0402 genome, GCA_001039635.1
GCA_001040845.1          	172.18.8.72	28670	Synechococcus sp. WH 8020 genome, GCA_001040845.1
GCA_001050835.1          	172.18.8.72	28671	Crocosphaera watsonii WH 0005 genome, GCA_001050835.1
GCA_001180245.1          	172.18.8.72	28672	Prochlorococcus marinus genome, GCA_001180245.1
GCA_001180265.1          	172.18.8.72	28673	Prochlorococcus marinus genome, GCA_001180265.1
GCA_001180285.1          	172.18.8.72	28674	Prochlorococcus marinus genome, GCA_001180285.1
GCA_001180305.1          	172.18.8.72	28675	Prochlorococcus marinus genome, GCA_001180305.1
GCA_001180325.1          	172.18.8.72	28676	Prochlorococcus marinus genome, GCA_001180325.1
GCA_001182765.1          	172.18.8.72	28677	Synechococcus sp. WH 8103 genome, GCA_001182765.1
GCA_001264245.1          	172.18.8.72	28678	Microcystis panniformis FACHB-1757 genome, GCA_001264245.1
GCA_001275395.1          	172.18.8.72	28679	Hapalosiphon sp. MRB220 genome, GCA_001275395.1
GCA_001276715.1          	172.18.8.72	28680	Planktothricoides sp. SR001 genome, GCA_001276715.1
GCA_001277295.1          	172.18.8.72	28681	Anabaena sp. wa102 genome, GCA_001277295.1
GCA_001298445.1          	172.18.8.72	28682	Nostoc piscinale CENA21 genome, GCA_001298445.1
GCA_001314865.1          	172.18.8.72	28683	Phormidesmis priestleyi Ana genome, GCA_001314865.1
GCA_001314905.1          	172.18.8.72	28684	Phormidium sp. OSCR genome, GCA_001314905.1
GCA_001318385.1          	172.18.8.72	28685	Synechocystis sp. PCC 6803 genome, GCA_001318385.1
GCA_001402795.1          	172.18.8.72	28686	Pseudanabaena sp. Roaring Creek genome, GCA_001402795.1
GCA_001456025.1          	172.18.8.72	28687	Mastigocoleus testarum BC008 genome, GCA_001456025.1
GCA_001458455.1          	172.18.8.72	28688	Chrysosporum ovalisporum genome, GCA_001458455.1
--EOS--

return 1 ;
