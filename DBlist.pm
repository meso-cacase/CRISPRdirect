package DBlist ;

# データベースの正式名およびホスト名/ポート番号の一覧
#
# フォーマット：
# DB	host	port_23nt	port_15nt	port_11nt	fullname	synonym(複数の場合は;で区切る)
#
# ホスト一覧：
# 172.18.8.70	ssd.dbcls.jp

$dbconfig =
<<'--EOS--' ;
hg38                     	localhost  	48001	Human (Homo sapiens) genome, GRCh38/hg38 (Dec, 2013)
hg19                     	localhost  	48002	Human (Homo sapiens) genome, GRCh37/hg19 (Feb, 2009)
hg18                     	localhost  	48003	Human (Homo sapiens) genome, NCBI36/hg18 (Mar, 2006)
JRGv2                    	172.18.8.70	48641	Human (Homo sapiens) Japanese Reference Genome, JRGv2 (Jun, 2017)
JRGv1                    	172.18.8.70	48250	Human (Homo sapiens) Japanese Reference Genome, JRGv1 (Aug, 2016)
mm10                     	localhost  	48004	Mouse (Mus musculus) genome, GRCm38/mm10 (Dec, 2011)
mm9                      	localhost  	48005	Mouse (Mus musculus) genome, NCBI37/mm9 (Jul, 2007)
MSMv3                    	172.18.8.70	48251	Mouse (Mus musculus) genome, MSMv3
JF1v2                    	172.18.8.70	48252	Mouse (Mus musculus) genome, JF1v2
rn6                      	localhost  	48006	Rat (Rattus norvegicus) genome, RGSC 6.0/rn6 (Jul, 2014)
rn5                      	localhost  	48007	Rat (Rattus norvegicus) genome, RGSC 5.0/rn5 (Mar, 2012)
vicPac2                  	172.18.8.70	48008	Alpaca (Vicugna pacos) genome, Vicugna_pacos-2.0.1/vicPac2 (Mar, 2013)
dasNov3                  	172.18.8.70	48009	Armadillo (Dasypus novemcinctus) genome, Baylor/dasNov3 (Dec, 2011)
papAnu2                  	172.18.8.70	48010	Baboon (Papio anubis) genome, Baylor Panu_2.0/papAnu2 (Mar, 2012)
otoGar3                  	172.18.8.70	48011	Bushbaby (Otolemur garnettii) genome, Broad/otoGar3 (Mar, 2011)
felCat5                  	172.18.8.70	48012	Cat (Felis catus) genome, ICGSC Felis_catus 6.2/felCat5 (Sep, 2011)
panTro4                  	172.18.8.70	48013	Chimp (Pan troglodytes) genome, CSAC 2.1.4/panTro4 (Feb, 2011)
criGri1                  	172.18.8.70	48014	Chinese hamster (Cricetulus griseus) genome, C_griseus_v1.0/criGri1 (Jul, 2013)
bosTau8                  	172.18.8.70	48015	Cow (Bos taurus) genome, Bos_taurus_UMD_3.1.1/bosTau8 (Jun, 2014)
canFam3                  	172.18.8.70	48016	Dog (Canis familiaris) genome, Broad CanFam3.1/canFam3 (Sep, 2011)
turTru2                  	172.18.8.70	48017	Dolphin (Tursiops truncatus) genome, Baylor Ttru_1.4/turTru2 (Oct, 2011)
loxAfr3                  	172.18.8.70	48018	Elephant (Loxodonta africana) genome, Broad/loxAfr3 (Jul, 2009)
musFur1                  	172.18.8.70	48019	Ferret (Mustela putorius furo) genome, MusPutFur1.0/musFur1 (Apr, 2011)
nomLeu3                  	172.18.8.70	48020	Gibbon (Nomascus leucogenys) genome, GGSC Nleu3.0/nomLeu3 (Oct, 2012)
gorGor3                  	172.18.8.70	48021	Gorilla (Gorilla gorilla gorilla) genome, gorGor3.1/gorGor3 (May, 2011)
cavPor3                  	172.18.8.70	48022	Guinea pig (Cavia porcellus) genome, Broad/cavPor3 (Feb, 2008)
eriEur2                  	172.18.8.70	48023	Hedgehog (Erinaceus europaeus) genome, EriEur2.0/eriEur2 (May, 2012)
equCab2                  	172.18.8.70	48024	Horse (Equus caballus) genome, Broad/equCab2 (Sep, 2007)
dipOrd1                  	172.18.8.70	48025	Kangaroo rat (Dipodomys ordii) genome, Broad/dipOrd1 (Jul, 2008)
triMan1                  	172.18.8.70	48026	Manatee (Trichechus manatus latirostris) genome, Broad v1.0/triMan1 (Oct, 2011)
calJac3                  	localhost  	48027	Marmoset (Callithrix jacchus) genome, WUGSC 3.2/calJac3 (Mar, 2009)
pteVam1                  	172.18.8.70	48028	Megabat (Pteropus vampyrus) genome, Broad/pteVam1 (Jul, 2008)
myoLuc2                  	172.18.8.70	48029	Microbat (Myotis lucifugus) genome, Broad Institute Myoluc2.0/myoLuc2 (Jul, 2010)
balAcu1                  	172.18.8.70	48030	Minke whale (Balaenoptera acutorostrata scammoni) genome, BalAcu1.0/balAcu1 (Oct, 2013)
micMur1                  	172.18.8.70	48031	Mouse lemur (Microcebus murinus) genome, Broad/micMur1 (Jul, 2007)
hetGla2                  	172.18.8.70	48032	Naked mole-rat (Heterocephalus glaber) genome, Broad HetGla_female_1.0/hetGla2 (Jan, 2012)
monDom5                  	172.18.8.70	48033	Opossum (Monodelphis domestica) genome, Broad/monDom5 (Oct, 2006)
ponAbe2                  	172.18.8.70	48034	Orangutan (Pongo abelii) genome, WUGSC 2.0.2/ponAbe2 (Jul, 2007)
ailMel1                  	172.18.8.70	48035	Panda (Ailuropoda melanoleuca) genome, BGI-Shenzhen 1.0/ailMel1 (Dec, 2009)
susScr3                  	localhost  	48036	Pig (Sus scrofa) genome, SGSC Sscrofa10.2/susScr3 (Aug, 2011)
ochPri3                  	172.18.8.70	48037	Pika (Ochotona princeps) genome, OchPri3.0/ochPri3 (May, 2012)
ornAna1                  	172.18.8.70	48038	Platypus (Ornithorhynchus anatinus) genome, WUGSC 5.0.1/ornAna1 (Mar, 2007)
oryCun2                  	172.18.8.70	48039	Rabbit (Oryctolagus cuniculus) genome, Broad/oryCun2 (Apr, 2009)
rheMac3                  	172.18.8.70	48040	Rhesus (Macaca mulatta) genome, BGI CR_1.0/rheMac3 (Oct, 2010)
proCap1                  	172.18.8.70	48041	Rock hyrax (Procavia capensis) genome, Broad/proCap1 (Jul, 2008)
oviAri3                  	172.18.8.70	48042	Sheep (Ovis aries) genome, ISGC Oar_v3.1/oviAri3 (Aug, 2012)
sorAra2                  	172.18.8.70	48043	Shrew (Sorex araneus) genome, Broad/sorAra2 (Aug, 2008)
choHof1                  	172.18.8.70	48044	Sloth (Choloepus hoffmanni) genome, Broad/choHof1 (Jul, 2008)
speTri2                  	172.18.8.70	48045	Squirrel (Spermophilus tridecemlineatus) genome, Broad/speTri2 (Nov, 2011)
saiBol1                  	172.18.8.70	48046	Squirrel monkey (Saimiri boliviensis) genome, Broad/saiBol1 (Oct, 2011)
tarSyr1                  	172.18.8.70	48047	Tarsier (Tarsius syrichta) genome, Broad/tarSyr1 (Aug, 2008)
sarHar1                  	172.18.8.70	48048	Tasmanian devil (Sarcophilus harrisii) genome, WTSI Devil_ref v7.0/sarHar1 (Feb, 2011)
echTel2                  	172.18.8.70	48049	Tenrec (Echinops telfairi) genome, Broad/echTel2 (Nov, 2012)
tupBel1                  	172.18.8.70	48050	Tree shrew (Tupaia belangeri) genome, Broad/tupBel1 (Dec, 2006)
macEug2                  	172.18.8.70	48051	Wallaby (Macropus eugenii) genome, TWGS Meug_1.1/macEug2 (Sep, 2009)
cerSim1                  	172.18.8.70	48052	White rhinoceros (Ceratotherium simum) genome, CerSimSim1.0/cerSim1 (May, 2012)
allMis1                  	localhost  	48053	American alligator (Alligator mississippiensis) genome, allMis0.2/allMis1 (Aug, 2012)
gadMor1                  	localhost  	48054	Atlantic cod (Gadus morhua) genome, Genofisk GadMor_May2010/gadMor1 (May, 2010)
melUnd1                  	localhost  	48055	Budgerigar (Melopsittacus undulatus) genome, WUSTL v6.3/melUnd1 (Sep, 2011)
galGal4                  	localhost  	48056	Chicken (Gallus gallus) genome, ICGSC Gallus_gallus-4.0/galGal4 (Nov, 2011)
latCha1                  	localhost  	48057	Coelacanth (Latimeria chalumnae) genome, Broad/latCha1 (Aug, 2011)
calMil1                  	localhost  	48058	Elephant shark (Callorhinchus milii) genome, Callorhinchus_milii-6.1.3/calMil1 (Dec, 2013)
fr3                      	localhost  	48059	Fugu (Takifugu rubripes) genome, FUGU5/fr3 (Oct, 2011)
petMar2                  	localhost  	48060	Lamprey (Petromyzon marinus) genome, WUGSC 7.0/petMar2 (Sep, 2010)
anoCar2                  	localhost  	48061	Lizard (Anolis carolinensis) genome, Broad AnoCar2.0/anoCar2 (May, 2010)
oryLat2                  	localhost  	48062	Medaka (Oryzias latipes) genome, NIG/UT MEDAKA1/oryLat2 (Oct, 2005)
geoFor1                  	localhost  	48063	Medium ground finch (Geospiza fortis) genome, GeoFor_1.0/geoFor1 (Apr, 2012)
oreNil2                  	localhost  	48064	Nile tilapia (Oreochromis niloticus) genome, Broad oreNil1.1/oreNil2 (Jan, 2011)
chrPic1                  	localhost  	48065	Painted turtle (Chrysemys picta bellii) genome, v3.0.1/chrPic1 (Dec, 2011)
gasAcu1                  	localhost  	48066	Stickleback (Gasterosteus aculeatus) genome, Broad/gasAcu1 (Feb, 2006)
tetNig2                  	localhost  	48067	Tetraodon (Tetraodon nigroviridis) genome, Genoscope 8.0/tetNig2 (Mar, 2007)
melGal1                  	localhost  	48068	Turkey (Meleagris gallopavo) genome, TGC Turkey_2.01/melGal1 (Dec, 2009)
taeGut2                  	localhost  	48070	Zebra finch (Taeniopygia guttata) genome, WashU taeGut324/taeGut2 (Feb, 2013)
danRer7                  	localhost  	48071	Zebrafish (Danio rerio) genome, Zv9/danRer7 (Jul, 2010)
ci2                      	localhost  	48072	Sea squirt (Ciona intestinalis) genome, JGI 2.1/ci2 (Mar, 2005)
KH                       	localhost  	48224	Sea squirt (Ciona intestinalis) genome, KH (Jul, 2008)
Spur_v3.1                	localhost  	48225	Purple sea urchin (Strongylocentrotus purpuratus) genome, Spur_v3.1 (Jun, 2011)
braFlo1                  	localhost  	48073	Lancelet (Branchiostoma floridae) genome, JGI 1.0/braFlo1 (Mar, 2006)
strPur2                  	localhost  	48074	Purple sea urchin (Strongylocentrotus purpuratus) genome, Baylor 2.1/strPur2 (Sep, 2006)
anoGam1                  	localhost  	48075	African malaria mosquito (Anopheles gambiae) genome, IAGEC MOZ2/anoGam1 (Feb, 2003)
apiMel2                  	localhost  	48076	Honeybee (Apis mellifera) genome, Baylor 2.0/apiMel2 (Jan, 2005)
dm6                      	localhost  	48080	Fruit fly (Drosophila melanogaster) genome, BDGP Release 6 + ISO1 MT/dm6 (Aug, 2014)
dm3                      	localhost  	48081	Fruit fly (Drosophila melanogaster) genome, BDGP R5/dm3 (Apr, 2006)
droAna2                  	localhost  	48077	Fruit fly (Drosophila ananassae) genome, Agencourt prelim/droAna2 (Aug, 2005)
droEre1                  	localhost  	48078	Fruit fly (Drosophila erecta) genome, Agencourt prelim/droEre1 (Aug, 2005)
droGri1                  	localhost  	48079	Fruit fly (Drosophila grimshawi) genome, Agencourt prelim/droGri1 (Aug, 2005)
droMoj2                  	localhost  	48082	Fruit fly (Drosophila mojavensis) genome, Agencourt prelim/droMoj2 (Aug, 2005)
droPer1                  	localhost  	48083	Fruit fly (Drosophila persimilis) genome, Broad/droPer1 (Oct, 2005)
dp3                      	localhost  	48084	Fruit fly (Drosophila pseudoobscura) genome, FlyBase 1.03/dp3 (Nov, 2004)
droSec1                  	localhost  	48085	Fruit fly (Drosophila sechellia) genome, Broad/droSec1 (Oct, 2005)
droSim1                  	localhost  	48086	Fruit fly (Drosophila simulans) genome, WUGSC mosaic 1.0/droSim1 (Apr, 2005)
droVir2                  	localhost  	48087	Fruit fly (Drosophila virilis) genome, Agencourt prelim/droVir2 (Aug, 2005)
droYak2                  	localhost  	48088	Fruit fly (Drosophila yakuba) genome, WUGSC 7.1/droYak2 (Nov, 2005)
caePb2                   	localhost  	48089	Roundworm (Caenorhabditis brenneri) genome, WUGSC 6.0.1/caePb2 (Feb, 2008)
cb3                      	localhost  	48090	Roundworm (Caenorhabditis briggsae) genome, WUGSC 1.0/cb3 (Jan, 2007)
ce10                     	localhost  	48091	Roundworm (Caenorhabditis elegans) genome, WS220/ce10 (Oct, 2010)
caeJap1                  	localhost  	48092	Roundworm (Caenorhabditis japonica) genome, WUGSC 3.0.2/caeJap1 (Mar, 2008)
caeRem3                  	localhost  	48093	Roundworm (Caenorhabditis remanei) genome, WUGSC 15.0.1/caeRem3 (May, 2007)
priPac1                  	localhost  	48094	Parasitic nematode (Pristionchus pacificus) genome, WUGSC 5.0/priPac1 (Feb, 2007)
sacCer3                  	localhost  	48095	Budding yeast (Saccharomyces cerevisiae) S288C genome, sacCer3 (Apr, 2011)
aplCal1                  	localhost  	48096	Sea hare (Aplysia californica) genome, Broad 2.0/aplCal1 (Sep, 2008)
eboVir3                  	localhost  	48097	Ebola virus genome, Sierra Leone G3683/KM034562.1/eboVir3 (Jun, 2014)
OryAfe1.0                	172.18.8.70	48098	Aardvark (Orycteropus afer) genome, OryAfe1.0 (May, 2012)
PoeFor_5.1.2             	172.18.8.70	48099	Amazon molly (Poecilia formosa) genome, Poecilia_formosa-5.1.2 (Oct, 2013)
CSAV2.0                  	172.18.8.70	48100	Sea squirt (Ciona savignyi) genome, CSAV 2.0 (Oct, 2005)
AstMex102                	172.18.8.70	48101	Cave fish (Astyanax mexicanus) genome, AstMex102 (Apr, 2013)
PelSin_1.0               	172.18.8.70	48102	Chinese softshell turtle (Pelodiscus sinensis) genome, PelSin_1.0 (Oct, 2011)
MacFas5.0                	172.18.8.70	48103	Crab-eating macaque (Macaca fascicularis) genome, MacFas5.0 (Jun, 2013)
BGI_duck_1.0             	172.18.8.70	48104	Duck (Anas platyrhynchos) genome, BGI_duck_1.0 (Apr, 2013)
FicAlb_1.4               	172.18.8.70	48105	Flycatcher (Ficedula albicollis) genome, FicAlb_1.4 (Jan, 2012)
Pham                     	172.18.8.70	48106	Hamadryas baboon (Papio hamadryas) genome, Pham (Nov, 2008)
Xipmac4.4.2              	172.18.8.70	48107	Platyfish (Xiphophorus maculatus) genome, Xipmac4.4.2 (Jan, 2012)
MicOch1.0                	172.18.8.70	48108	Prairie vole (Microtus ochrogaster) genome, MicOch1.0 (Nov, 2012)
PhyMac_2.0.2             	172.18.8.70	48109	Sperm whale (Physeter macrocephalus) genome, PhyMac_2.0.2 (Sep, 2013)
LepOcu1                  	172.18.8.70	48110	Spotted gar (Lepisosteus oculatus) genome, LepOcu1 (Dec, 2011)
ChlSab1.1                	172.18.8.70	48111	Green monkey (Chlorocebus sabaeus) genome, ChlSab1.1 (Mar, 2014)
macaque_CE_1             	localhost  	48223	Crab-eating macaque (Macaca fascicularis) genome, CE_1.0 (Jul, 2011)
MesAur1.0                	localhost  	48229	Golden hamster (Mesocricetus auratus) genome, MesAur1.0 (Mar, 2013)
Xenla9                   	localhost  	48207	Frog (Xenopus laevis) genome, XenBase/JGI 9.1
Xenla7                   	localhost  	48208	Frog (Xenopus laevis) genome, JGI 7.1/Xenla7 (Dec, 2013)
Xentr9                   	localhost  	48209	Frog (Xenopus tropicalis) genome, XenBase/JGI 9.0
Xentr8                   	localhost  	48210	Frog (Xenopus tropicalis) genome, XenBase/JGI 8.0
Xentr7                   	localhost  	48211	Frog (Xenopus tropicalis) genome, XenBase/JGI 7.1
xenTro3                  	localhost  	48069	Frog (Xenopus tropicalis) genome, JGI 4.2/xenTro3 (Nov, 2009)
Acyr_2.0                 	172.18.8.70	48112	Pea aphid (Acyrthosiphon pisum) genome, Acyr_2.0 (Jun, 2010)
AaegL3                   	172.18.8.70	48113	Yellowfever mosquito (Aedes aegypti) genome, AaegL3 (Dec, 2013)
Aqu1                     	172.18.8.70	48114	Sponge (Amphimedon queenslandica) genome, Aqu1 (Oct, 2010)
AdarC3                   	172.18.8.70	48115	Mosquito (Anopheles darlingi) genome, AdarC3 (Jan, 2014)
Attacep1.0               	172.18.8.70	48116	Leafcutter ant (Atta cephalotes) genome, Attacep1.0 (Jul, 2012)
B_malayi_3.0             	172.18.8.70	48118	Filarial nematode worm (Brugia malayi) genome, B_malayi-3.0 (Dec, 2012)
Capte_v1.0               	172.18.8.70	48119	Polychaete worm (Capitella teleta) genome, Capitella teleta v1.0 (Dec, 2012)
oyster_v9                	172.18.8.70	48120	Pacific oyster (Crassostrea gigas) genome, oyster_v9 (Sep, 2012)
CpipJ2                   	172.18.8.70	48121	Southern house mosquito (Culex quinquefasciatus) genome, CpipJ2 (Jan, 2007)
DanPle_1.0               	172.18.8.70	48122	Monarch butterfly (Danaus plexippus) genome, DanPle_1.0 (Nov, 2011)
Dappu_V1.0               	172.18.8.70	48123	Water flea (Daphnia pulex) genome, V1.0 (Feb, 2011)
DendPond_1.0             	172.18.8.70	48124	Mountain pine beetle (Dendroctonus ponderosae) genome, DendPond_male_1.0 (Apr, 2013)
dwil_caf1                	172.18.8.70	48125	Fruit fly (Drosophila willistoni) genome, dwil_caf1 (Jul, 2008)
Hmel1                    	172.18.8.70	48126	Postman butterfly (Heliconius melpomene) genome, Hmel1 (Feb, 2012)
Helro1                   	172.18.8.70	48127	Californian leech (Helobdella robusta) genome, Helro1 (Dec, 2012)
IscaW1                   	172.18.8.70	48128	Black-legged tick (Ixodes scapularis) genome, IscaW1 (Aug, 2007)
Loa_loa_V3               	172.18.8.70	48129	Eye worm (Loa loa) genome, Loa_loa_V3 (Jan, 2010)
Lotgi1                   	172.18.8.70	48130	Giant owl limpet (Lottia gigantea) genome, Lotgi1 (Jan, 2013)
Msca1                    	172.18.8.70	48131	Humpbacked fly (Megaselia scalaris) genome, Msca1 (Feb, 2013)
MelCinx1.0               	172.18.8.70	48132	Glanville fritillary (Melitaea cinxia) genome, MelCinx1.0 (Jul, 2014)
MneLei                   	172.18.8.70	48133	Sea walnut (Mnemiopsis leidyi) genome, MneLei_Aug2011 (Sep, 2011)
Nvit_2.1                 	172.18.8.70	48134	Parasitic wasp (Nasonia vitripennis) genome, Nvit_2.1 (Nov, 2012)
ASM20922v1               	172.18.8.70	48135	Starlet sea anemone (Nematostella vectensis) genome, ASM20922v1 (Sep, 2007)
Cameroon_v3              	172.18.8.70	48136	Parasitic nematode (Onchocerca volvulus) genome, Cameroon_v3 (Nov, 2013)
PhumU2                   	172.18.8.70	48137	Body louse (Pediculus humanus) genome, PhumU2 (Nov, 2008)
RproC1                   	172.18.8.70	48138	Triatomid bug (Rhodnius prolixus) genome, RproC1 (Dec, 2010)
ASM23792v2               	172.18.8.70	48139	Blood fluke (Schistosoma mansoni) genome, ASM23792v2 (Apr, 2012)
Si_gnG                   	172.18.8.70	48140	Red imported fire ant (Solenopsis invicta) genome, Si_gnG (Feb, 2011)
Smar1                    	172.18.8.70	48141	European centipede (Strigamia maritima) genome, Smar1 (Feb, 2013)
ASM23943v1               	172.18.8.70	48142	Two-spotted spider mite (Tetranychus urticae) genome, ASM23943v1 (Nov, 2011)
Tcas3                    	172.18.8.70	48143	Red flour beetle (Tribolium castaneum) genome, Tcas3 (Feb, 2010)
Tspiralis1               	172.18.8.70	48144	Trichina worm (Trichinella spiralis) genome, Tspiralis1 (Mar, 2011)
ASM15027v1               	172.18.8.70	48145	Trichoplax adhaerens genome, ASM15027v1 (Aug, 2006)
ZooNev1.0                	172.18.8.70	48146	Dampwood termite (Zootermopsis nevadensis) genome, ZooNev1.0 (Jun, 2014)
ASM15162v1               	172.18.8.70	48117	Silkworm (Bombyx mori) genome, ASM15162v1 (Feb, 2013)
bmor1                    	localhost  	48221	Silkworm (Bombyx mori) genome, Bmor1 (Apr, 2008)
h7                       	localhost  	48226	Hydra vulgaris genome, h7 (Aug, 2008)
Hydra_RP_1.0             	localhost  	48227	Hydra vulgaris genome, Hydra_RP_1.0 (Oct, 2009)
Tetth                    	172.18.8.70	48236	Tetrahymena thermophila genome (Jun, 2014)
Tetbo                    	172.18.8.70	48237	Tetrahymena borealis genome (Oct, 2012)
Tetel                    	172.18.8.70	48238	Tetrahymena elliotti genome (Oct, 2012)
Tetma                    	172.18.8.70	48239	Tetrahymena malaccensis genome (Oct, 2012)
img1                     	172.18.8.70	48240	Ichthyophthirius multifiliis macronuclear genome
stylo                    	172.18.8.70	48241	Stylonychia lemnae macronuclear genome
oxy                      	172.18.8.70	48242	Oxytricha trifallax macronuclear genome
oxymic                   	172.18.8.70	48243	Oxytricha trifallax micronuclear genome
YOKOZUNA-1               	172.18.8.70	48253	Tardigrade (Ramazzottius variornatus) YOKOZUNA-1 genome (Sep, 2016)
ASM34733v1               	172.18.8.70	48147	Tausch's goatgrass (Aegilops tauschii) genome, ASM34733v1 (Dec, 2013)
AMTR1.0                  	172.18.8.70	48148	Amborella trichopoda genome, AMTR1.0 (Jan, 2014)
Araly_v.1.0              	172.18.8.70	48149	Lyre-leaved rock-cress (Arabidopsis lyrata) genome, v.1.0 (Dec, 2008)
TAIR10_en                	172.18.8.70	48150	Thale cress (Arabidopsis thaliana) genome, TAIR10 (Sep, 2010)
Bradi_v1.0               	172.18.8.70	48151	Purple false brome (Brachypodium distachyon) genome, v1.0 (Jan, 2009)
Braol_v2.1               	172.18.8.70	48152	Wild cabbage (Brassica oleracea) genome, v2.1
Brapa_v1.5               	172.18.8.70	48259	Chinese cabbage (Brassica rapa ssp. pekinensis) genome, v1.5 (May, 2013)
IVFCAASv1                	172.18.8.70	48153	Chinese cabbage (Brassica rapa ssp. pekinensis) genome, IVFCAASv1 (Aug, 2009)
Chlre_v3.1               	172.18.8.70	48154	Green algae (Chlamydomonas reinhardtii) genome, v3.1 (Nov, 2007)
ASM9120v1                	172.18.8.70	48155	Red alga (Cyanidioschyzon merolae) genome, ASM9120v1 (Nov, 2008)
Soybn_V1.0               	172.18.8.70	48156	Soybean (Glycine max) genome, V1.0 (Jan, 2010)
Horvu_v1                 	172.18.8.70	48157	Barley (Hordeum vulgare) genome, 082214v1 (Mar, 2012)
Lperr_V1.4               	172.18.8.70	48158	Leersia perrieri genome, Lperr_V1.4 (Mar, 2014)
MedtrA17_4.0             	172.18.8.70	48159	Barrel medic (Medicago truncatula) str. A17 genome, MedtrA17_4.0 (Jun, 2014)
MA1                      	172.18.8.70	48160	Banana (Musa acuminata) genome, MA1 (Aug, 2012)
Obart_v1.0               	172.18.8.70	48161	African wild rice (Oryza barthii) genome, Obart_v1.0 (Apr, 2014)
Orybr_v1.4b              	172.18.8.70	48162	African wild rice (Oryza brachyantha) genome, Oryza_brachyantha.v1.4b (May, 2011)
AGI1.1                   	172.18.8.70	48163	African wild rice (Oryza glaberrima) genome, AGI1.1 (May, 2011)
Orygl                    	172.18.8.70	48164	Brazilian wild rice (Oryza glumaepatula) genome, ALNU02000000 (Aug, 2013)
Orylo_v0117              	172.18.8.70	48165	Longstamen rice (Oryza longistaminata) genome, v0117-2013Aug (Aug, 2013)
Oryme_v1.3               	172.18.8.70	48166	Australian wild rice (Oryza meridionalis) genome, Oryza_meridionalis_v1.3 (Oct, 2014)
Oryni                    	172.18.8.70	48167	Indian wild rice (Oryza nivara) genome, AWHD00000000 (Aug, 2013)
Orypu                    	172.18.8.70	48168	Red rice (Oryza punctata) genome, AVCL00000000 (Aug, 2013)
PRJEB4137                	172.18.8.70	48169	Brownbeard rice (Oryza rufipogon) genome, PRJEB4137 (Aug, 2013)
ASM465v1                 	172.18.8.70	48170	Rice (Oryza sativa ssp. indica) genome, ASM465v1 (Jan, 2005)
ASM9206v1                	172.18.8.70	48171	Ostreococcus lucimarinus genome, ASM9206v1 (Jan, 2011)
ASM242v1                 	172.18.8.70	48172	Moss (Physcomitrella patens) genome, ASM242v1 (Jul, 2006)
Poptr_JGI2.0             	172.18.8.70	48173	Western balsam poplar (Populus trichocarpa) genome, JGI2.0 (Jan, 2010)
Prupe1_0                 	172.18.8.70	48174	Peach (Prunus persica) genome, Prupe1_0 (Mar, 2013)
Selml_v1.0               	172.18.8.70	48175	Spikemoss (Selaginella moellendorffii) genome, v1.0 (May, 2011)
Setit_JGIv2.0            	172.18.8.70	48176	Foxtail millet (Setaria italica) genome, JGIv2.0 (Jan, 2012)
SL2.50                   	172.18.8.70	48177	Tomato (Solanum lycopersicum) str. Heinz 1706 genome, SL2.50 (Oct, 2014)
SolTub_3.0               	172.18.8.70	48178	Potato (Solanum tuberosum) genome, SolTub_3.0 (May, 2011)
Sorbi1                   	172.18.8.70	48179	Sorghum (Sorghum bicolor) genome, Sorbi1 (Dec, 2007)
Thecc_20110822           	172.18.8.70	48180	Cacao (Theobroma cacao) genome, Theobroma_cacao_20110822 (May, 2014)
IWGSC1.0                 	172.18.8.70	48181	Wheat (Triticum aestivum) genome, IWGSC1.0+popseq (Nov, 2014)
ASM34745v1               	172.18.8.70	48182	Red wild einkorn (Triticum urartu) genome, ASM34745v1 (Apr, 2013)
IGGP_12x                 	172.18.8.70	48183	Grape (Vitis vinifera) genome, IGGP_12x (Jun, 2011)
AGPv3                    	172.18.8.70	48184	Corn (Zea mays) genome, AGPv3 (Apr, 2013)
Ppatens_251_v3           	172.18.8.70	48185	Moss (Physcomitrella patens) genome, v3.0 (Oct, 2007)
Smoellendorffii_91_v1    	172.18.8.70	48186	Spikemoss (Selaginella moellendorffii) genome, v1.0 (Dec, 2007)
Creinhardtii_281_v5_5    	172.18.8.70	48187	Green algae (Chlamydomonas reinhardtii) genome, v5.5 (May, 2014)
Olucimarinus_231_v2      	172.18.8.70	48188	Ostreococcus lucimarinus genome, v2.0 (Jan, 2011)
Cgrandiflora_v1          	172.18.8.70	48189	Capsella grandiflora genome, v1.1
Crubella_v1              	172.18.8.70	48190	Red shepherd's purse (Capsella rubella) genome, v1.0
Cpapaya_r.Dec2008        	172.18.8.70	48191	Papaya (Carica papaya) genome, ASGPBv0.4
CsubellipsoideaC169_v2.0 	172.18.8.70	48192	Coccomyxa subellipsoidea C-169 genome, v2.0
Csativus_v1              	172.18.8.70	48193	Cucumber (Cucumis sativus) genome, v1.0
Egrandis_v2.0            	172.18.8.70	48194	Eucalyptus grandis genome, v2.0
fragaria_vesca_v2.0.a1   	172.18.8.70	48258	Strawberry (Fragaria vesca) genome, v2.0.a1 (Dec, 2014)
Fvesca_v1.1              	172.18.8.70	48195	Strawberry (Fragaria vesca) genome, v1.1
Graimondii_v2.0          	172.18.8.70	48196	Cotton (Gossypium raimondii) genome, v2.1
Lusitatissimum_BGIv1.0   	172.18.8.70	48197	Flax (Linum usitatissimum) genome, v1.0
malus_x_domestica_v1.0p  	172.18.8.70	48257	Apple (Malus domestica) genome, v1.0p (Aug, 2012)
Mdomestica_v1.0          	172.18.8.70	48198	Apple (Malus domestica) genome, v1.0
Mesculenta_v6            	172.18.8.70	48199	Cassava (Manihot esculenta) genome, v6.1
MpusillaCCMP1545_v3.0    	172.18.8.70	48200	Picoplanktonic green alga (Micromonas pusilla) CCMP1545 genome, v3.0
MpusillaRCC299_v3.0      	172.18.8.70	48201	Picoplanktonic green alga (Micromonas pusilla) sp. RCC299 genome, v3.0
Mguttatus_v2.0           	172.18.8.70	48202	Monkey flower (Mimulus guttatus) genome, v2.0
Ppersica_v2.0            	172.18.8.70	48203	Peach (Prunus persica) genome, v2.1
Rcommunis_TIGR.0.1       	172.18.8.70	48204	Castor bean (Ricinus communis) genome, v0.1
Spolyrhiza_v1            	172.18.8.70	48205	Giant duckweed (Spirodela polyrhiza) genome, v2
Vcarteri_v2              	172.18.8.70	48206	Green alga (Volvox carteri) genome, v2.0
Ptrichocarpa_v3.0        	localhost  	48220	Western balsam poplar (Populus trichocarpa) genome, v3.0
TAIR10                   	localhost  	48212	Thale cress (Arabidopsis thaliana) genome, TAIR10 (Nov, 2010)
rice                     	localhost  	48213	Rice (Oryza sativa ssp. japonica) genome, Os-Nipponbare-Reference-IRGSP-1.0 (Oct, 2011)
sorBic                   	localhost  	48214	Sorghum (Sorghum bicolor) genome, Sorghum bicolor v2.1 (May, 2013)
Brana_v4.1               	localhost  	48215	Rapeseed (Brassica napus) genome, Genoscope v4.1 (Aug, 2014)
lotus_r3.0               	localhost  	48216	Japanese trefoil (Lotus japonicus) genome, build 3.0 (Aug, 2015)
BX                       	172.18.8.70	48234	Tobacco (Nicotiana tabacum) BX genome, Ntab-BX (2014)
Niben_v1.0.1             	localhost  	48217	Tobacco (Nicotiana benthamiana) genome, v1.0.1 (Jul, 2014)
adzuki_ver3              	localhost  	48218	Adzuki bean (Vigna angularis) genome, ver3 (Nov, 2011)
RSA_r1.0                 	localhost  	48219	Radish (Raphanus sativus) genome, RSA_r1.0 (May, 2014)
asagao                   	172.18.8.70	48256	Japanese morning glory (Ipomoea nil) Tokyo Kokei Standard (TKS) genome (Sep, 2016)
pombe                    	localhost  	48222	Fission yeast (Schizosaccharomyces pombe) 972h- genome, ASM294v2 (Nov, 2007)
MG8                      	localhost  	48228	Rice blast fungus (Magnaporthe oryzae) 70-15 genome, MG8 (Sep, 2011)
ASM644v2                 	172.18.8.70	48230	Marine yeast (Debaryomyces hansenii) CBS767 genome, ASM644v2 (Feb, 2015)
ASM251v1                 	172.18.8.70	48231	Yeast (Kluyveromyces lactis) genome, ASM251v1 (Feb, 2015)
ASM252v1                 	172.18.8.70	48232	Oleaginous yeast (Yarrowia lipolytica) genome, ASM252v1 (May, 2012)
RR                       	172.18.8.70	48233	Wheat head blight fungus (Fusarium graminearum) genome, RR (Nov, 2014)
RHOziaDV1.0              	172.18.8.70	48235	Oleaginous yeast (Rhodotorula toruloides) NP11 genome, RHOziaDV1.0 (Apr, 2013)
A_nidulans_FGSC_A4       	172.18.8.70	48244	Aspergillus nidulans (Emericella nidulans) FGSC A4 genome, s10-m04-r06 (Apr, 2016)
A_fumigatus_Af293        	172.18.8.70	48245	Aspergillus fumigatus (Neosartorya fumigata) Af293 genome, s03-m05-r06 (Apr, 2016)
C_glabrata_CBS138        	172.18.8.70	48246	Candida glabrata (Torulopsis glabrata) CBS138 genome, s02-m07-r08 (Jun, 2016)
C_albicans_SC5314        	172.18.8.70	48247	Candida albicans SC5314 genome, Assembly 21, A21-s02-m09-r10 (Feb, 2016)
JCVI_PMFA1_2.0           	172.18.8.70	48248	Penicillium marneffei ATCC 18224 genome, JCVI-PMFA1-2.0 (Oct, 2008)
CC3                      	172.18.8.70	48249	Inky cap fungus (Coprinopsis cinerea) okayama7#130 genome, CC3 (Aug, 2014)
ASM15095v2               	172.18.8.70	48254	Phaeodactylum tricornutum genome, ASM15095v2 (Feb, 2010)
ASM14940v2               	172.18.8.70	48255	Thalassiosira pseudonana genome, ASM14940v2 (May, 2014)
--EOS--

return 1 ;
