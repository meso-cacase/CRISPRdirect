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
bosTau7                  	172.18.8.70	48665	Cow (Bos taurus) genome, Btau_4.6.1/bosTau7 (Oct, 2011)
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
danRer11                 	172.18.8.70	48664	Zebrafish (Danio rerio) genome, GRCz11/danRer11 (May, 2017)
danRer10                 	172.18.8.70	48663	Zebrafish (Danio rerio) genome, GRCz10/danRer10 (Sep, 2014)
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
AaegL5                   	172.18.8.70	48670	Yellow fever mosquito (Aedes aegypti) genome, AaegL5 (Jun, 2017)
AaegL3                   	172.18.8.70	48113	Yellow fever mosquito (Aedes aegypti) genome, AaegL3 (Dec, 2013)
AaloF1                   	172.18.8.70	48671	Asian tiger mosquito (Aedes albopictus) genome, AaloF1 (Nov, 2015)
AdarC3                   	172.18.8.70	48115	American malaria mosquito (Anopheles darlingi) genome, AdarC3 (Jan, 2014)
Aqu1                     	172.18.8.70	48114	Sponge (Amphimedon queenslandica) genome, Aqu1 (Oct, 2010)
Aros_1.0                 	172.18.8.70	48648	Turnip sawfly (Athalia rosae) genome, Aros_1.0 (Mar, 2013)
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
Bomo_silkbase            	172.18.8.70	48644	Silkworm (Bombyx mori) genome, SilkBase assembly (Jan, 2017)
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
Soybn_V2.0               	172.18.8.70	48666	Soybean (Glycine max) genome, v2.0 (Nov, 2015)
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
SL3.0                    	172.18.8.70	48637	Tomato (Solanum lycopersicum) genome, SL3.00 (Feb, 2017)
SL2.50                   	172.18.8.70	48177	Tomato (Solanum lycopersicum) str. Heinz 1706 genome, SL2.50 (Oct, 2014)
SL2.4                    	172.18.8.70	48636	Tomato (Solanum lycopersicum) genome, SL2.40 (Jan, 2011)
SME_r2.5.1               	172.18.8.70	48655	Eggplant (Solanum melongena) genome, r2.5.1
SolTub_3.0               	172.18.8.70	48178	Potato (Solanum tuberosum) genome, SolTub_3.0 (May, 2011)
Sorbi3                   	172.18.8.70	48667	Sorghum (Sorghum bicolor) genome, NCBIv3 (Jun, 2017)
Sorbi1                   	172.18.8.70	48179	Sorghum (Sorghum bicolor) genome, Sorbi1 (Dec, 2007)
Thecc_20110822           	172.18.8.70	48180	Cacao (Theobroma cacao) genome, Theobroma_cacao_20110822 (May, 2014)
IWGSC1.0                 	172.18.8.70	48181	Wheat (Triticum aestivum) genome, IWGSC1.0+popseq (Nov, 2014)
ASM34745v1               	172.18.8.70	48182	Red wild einkorn (Triticum urartu) genome, ASM34745v1 (Apr, 2013)
IGGP_12x                 	172.18.8.70	48183	Grape (Vitis vinifera) genome, IGGP_12x (Jun, 2011)
AGPv4                    	172.18.8.70	48661	Corn (Zea mays) genome, AGPv4 (Mar, 2016)
AGPv3                    	172.18.8.70	48184	Corn (Zea mays) genome, AGPv3 (Apr, 2013)
Ppatens_251_v3           	172.18.8.70	48185	Moss (Physcomitrella patens) genome, v3.0 (Oct, 2007)
Smoellendorffii_91_v1    	172.18.8.70	48186	Spikemoss (Selaginella moellendorffii) genome, v1.0 (Dec, 2007)
Creinhardtii_281_v5_5    	172.18.8.70	48187	Green algae (Chlamydomonas reinhardtii) genome, v5.5 (May, 2014)
Olucimarinus_231_v2      	172.18.8.70	48188	Ostreococcus lucimarinus genome, v2.0 (Jan, 2011)
Cgrandiflora_v1          	172.18.8.70	48189	Capsella grandiflora genome, v1.1
Crubella_v1              	172.18.8.70	48190	Red shepherd's purse (Capsella rubella) genome, v1.0
Zunla-1_v2.0             	172.18.8.70	48652	Pepper (Capsicum annuum) Zunla-1 genome, release 2.0
Chiltepin_v2.0           	172.18.8.70	48653	Pepper (Capsicum annuum var. glabriusculum) Chiltepin genome, release 2.0
Cpapaya_r.Dec2008        	172.18.8.70	48191	Papaya (Carica papaya) genome, ASGPBv0.4
WCG_v1                   	172.18.8.70	48658	Watermelon (Citrullus lanatus subsp. vulgaris) Charleston Gray genome, v1
W97103_v1                	172.18.8.70	48659	Watermelon (Citrullus lanatus subsp. vulgaris) 97103 genome, v1
Cclementina_v1           	172.18.8.70	48642	Clementine (Citrus clementina) genome, v1.0
Csinensis_v1             	172.18.8.70	48643	Sweet orange (Citrus sinensis) genome, v1.1
CsubellipsoideaC169_v2.0 	172.18.8.70	48192	Coccomyxa subellipsoidea C-169 genome, v2.0
Ccanephora_1.0           	172.18.8.70	48662	Coffee (Coffea canephora) genome, v1.0
CM3.6.1                  	172.18.8.70	48654	Melon (Cucumis melo) genome, v3.6.1 (Jul, 2017)
CM3.5.1                  	172.18.8.70	48640	Melon (Cucumis melo) genome, v3.5.1 (Oct, 2013)
PI183967                 	172.18.8.70	48639	Cucumber (Cucumis sativus) PI183967 genome (Apr, 2013)
ChineseLong_v2           	172.18.8.70	48638	Cucumber (Cucumis sativus) Chinese long genome, v2
Csativus_Gy14            	172.18.8.70	48656	Cucumber (Cucumis sativus) Gy14 genome, v1
Csativus_v1              	172.18.8.70	48193	Cucumber (Cucumis sativus) genome, v1.0
Cmo_v1                   	172.18.8.70	48651	Pumpkin (Cucurbita moschata) Rifu genome, v1
Cp4.1                    	172.18.8.70	48657	Zucchini (Cucurbita pepo subsp. pepo) genome, v4.1
Dcarota_v2.0             	172.18.8.70	48650	Carrot (Daucus carota) genome, v2.0
Egrandis_v2.0            	172.18.8.70	48194	Eucalyptus grandis genome, v2.0
fragaria_vesca_v2.0.a1   	172.18.8.70	48258	Strawberry (Fragaria vesca) genome, v2.0.a1 (Dec, 2014)
Fvesca_v1.1              	172.18.8.70	48195	Strawberry (Fragaria vesca) genome, v1.1
Graimondii_v2.0          	172.18.8.70	48196	Cotton (Gossypium raimondii) genome, v2.1
HanXRQr1.0               	172.18.8.70	48660	Sunflower (Helianthus annuus) genome, HanXRQr1.0 (Dec, 2015)
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
A_chinensis_Hongyang     	172.18.8.70	48646	Golden kiwi (Actinidia chinensis) genome
Mpolymorpha_3.1          	172.18.8.70	48649	Liverwort (Marchantia polymorpha) genome, JGI 3.1
pombe                    	localhost  	48222	Fission yeast (Schizosaccharomyces pombe) 972h- genome, ASM294v2 (Nov, 2007)
MG8                      	localhost  	48228	Rice blast fungus (Magnaporthe oryzae) 70-15 genome, MG8 (Sep, 2011)
ASM644v2                 	172.18.8.70	48230	Marine yeast (Debaryomyces hansenii) CBS767 genome, ASM644v2 (Feb, 2015)
ASM251v1                 	172.18.8.70	48231	Kluyveromyces yeast (Kluyveromyces lactis) genome, ASM251v1 (Feb, 2015)
KM1777_03                	172.18.8.70	48668	Kluyveromyces yeast (Kluyveromyces marxianus) genome, KM1777_03 (Oct, 2014)
PicPas_Mar2011           	172.18.8.70	48669	Methylotrophic yeast (Komagataella phaffii) CBS 7435 genome, PicPas_Mar2011 (Oct, 2016)
ASM252v1                 	172.18.8.70	48232	Oleaginous yeast (Yarrowia lipolytica) genome, ASM252v1 (May, 2012)
RR                       	172.18.8.70	48233	Wheat head blight fungus (Fusarium graminearum) genome, RR (Nov, 2014)
RHOziaDV1.0              	172.18.8.70	48235	Oleaginous yeast (Rhodotorula toruloides) NP11 genome, RHOziaDV1.0 (Apr, 2013)
ASM24337v1               	172.18.8.70	48647	Torulaspora yeast (Torulaspora delbrueckii) genome, ASM24337v1 (Feb, 2015)
A_oryzae_RIB40           	172.18.8.70	48645	Aspergillus oryzae RIB40 genome, s01-m09-r03 (Oct, 2015)
A_nidulans_FGSC_A4       	172.18.8.70	48244	Aspergillus nidulans (Emericella nidulans) FGSC A4 genome, s10-m04-r06 (Apr, 2016)
A_fumigatus_Af293        	172.18.8.70	48245	Aspergillus fumigatus (Neosartorya fumigata) Af293 genome, s03-m05-r06 (Apr, 2016)
C_glabrata_CBS138        	172.18.8.70	48246	Candida glabrata (Torulopsis glabrata) CBS138 genome, s02-m07-r08 (Jun, 2016)
C_albicans_SC5314        	172.18.8.70	48247	Candida albicans SC5314 genome, Assembly 21, A21-s02-m09-r10 (Feb, 2016)
JCVI_PMFA1_2.0           	172.18.8.70	48248	Penicillium marneffei ATCC 18224 genome, JCVI-PMFA1-2.0 (Oct, 2008)
CC3                      	172.18.8.70	48249	Inky cap fungus (Coprinopsis cinerea) okayama7#130 genome, CC3 (Aug, 2014)
ASM15095v2               	172.18.8.70	48254	Phaeodactylum tricornutum genome, ASM15095v2 (Feb, 2010)
ASM14940v2               	172.18.8.70	48255	Thalassiosira pseudonana genome, ASM14940v2 (May, 2014)
GCA_000009725.1          	172.18.8.70	48391	Synechocystis sp. PCC 6803 genome, GCA_000009725.1
GCA_000009705.1          	172.18.8.70	48395	Nostoc sp. PCC 7120 genome, GCA_000009705.1
GCA_000011345.1          	172.18.8.70	48601	Thermosynechococcus elongatus BP-1 genome, GCA_000011345.1
GCA_000010625.1          	172.18.8.70	48351	Microcystis aeruginosa NIES-843 genome, GCA_000010625.1
GCA_000011385.1          	172.18.8.70	48262	Gloeobacter violaceus PCC 7421 genome, GCA_000011385.1
GCA_000006985.1          	172.18.8.70	48630	Chlorobium tepidum TLS genome, GCA_000006985.1
GCA_000007925.1          	172.18.8.70	48343	Prochlorococcus marinus subsp. marinus str. CCMP1375 genome, GCA_000007925.1
GCA_000010065.1          	172.18.8.70	48287	Synechococcus elongatus PCC 6301 genome, GCA_000010065.1
GCA_000011465.1          	172.18.8.70	48449	Prochlorococcus marinus subsp. pastoris str. CCMP1986 genome, GCA_000011465.1
GCA_000011485.1          	172.18.8.70	48520	Prochlorococcus marinus str. MIT 9313 genome, GCA_000011485.1
GCA_000012465.1          	172.18.8.70	48401	Prochlorococcus marinus str. NATL2A genome, GCA_000012465.1
GCA_000012505.1          	172.18.8.70	48505	Synechococcus sp. CC9902 genome, GCA_000012505.1
GCA_000012525.1          	172.18.8.70	48457	Synechococcus elongatus PCC 7942 genome, GCA_000012525.1
GCA_000012625.1          	172.18.8.70	48400	Synechococcus sp. CC9605 genome, GCA_000012625.1
GCA_000012645.1          	172.18.8.70	48413	Prochlorococcus marinus str. MIT 9312 genome, GCA_000012645.1
GCA_000013205.1          	172.18.8.70	48301	Synechococcus sp. JA-3-3Ab genome, GCA_000013205.1
GCA_000013225.1          	172.18.8.70	48298	Cyanobacteria bacterium Yellowstone B-Prime genome, GCA_000013225.1
GCA_000014265.1          	172.18.8.70	48356	Trichodesmium erythraeum IMS101 genome, GCA_000014265.1
GCA_000014585.1          	172.18.8.70	48421	Synechococcus sp. CC9311 genome, GCA_000014585.1
GCA_000015645.1          	172.18.8.70	48314	Prochlorococcus marinus str. AS9601 genome, GCA_000015645.1
GCA_000015665.1          	172.18.8.70	48543	Prochlorococcus marinus str. MIT 9515 genome, GCA_000015665.1
GCA_000015685.1          	172.18.8.70	48437	Prochlorococcus marinus str. NATL1A genome, GCA_000015685.1
GCA_000015705.1          	172.18.8.70	48464	Prochlorococcus marinus str. MIT 9303 genome, GCA_000015705.1
GCA_000015965.1          	172.18.8.70	48461	Prochlorococcus marinus str. MIT 9301 genome, GCA_000015965.1
GCA_000017845.1          	172.18.8.70	48572	Cyanothece sp. ATCC 51142 genome, GCA_000017845.1
GCA_000018065.1          	172.18.8.70	48332	Prochlorococcus marinus str. MIT 9215 genome, GCA_000018065.1
GCA_000018105.1          	172.18.8.70	48517	Acaryochloris marina MBIC11017 genome, GCA_000018105.1
GCA_000018585.1          	172.18.8.70	48270	Prochlorococcus marinus str. MIT 9211 genome, GCA_000018585.1
GCA_000019485.1          	172.18.8.70	48580	Synechococcus sp. PCC 7002 genome, GCA_000019485.1
GCA_000020025.1          	172.18.8.70	48462	Nostoc punctiforme PCC 73102 genome, GCA_000020025.1
GCA_000021805.1          	172.18.8.70	48556	Cyanothece sp. PCC 8801 genome, GCA_000021805.1
GCA_000021825.1          	172.18.8.70	48574	Cyanothece sp. PCC 7424 genome, GCA_000021825.1
GCA_000022045.1          	172.18.8.70	48581	Cyanothece sp. PCC 7425 genome, GCA_000022045.1
GCA_000024045.1          	172.18.8.70	48554	Cyanothece sp. PCC 8802 genome, GCA_000024045.1
GCA_000025125.1          	172.18.8.70	48486	Candidatus Atelocyanobacterium thalassa isolate ALOHA genome, GCA_000025125.1
GCA_000063505.1          	172.18.8.70	48330	Synechococcus sp. WH 7803 genome, GCA_000063505.1
GCA_000063525.1          	172.18.8.70	48483	Synechococcus sp. RCC307 genome, GCA_000063525.1
GCA_000147335.1          	172.18.8.70	48525	Cyanothece sp. PCC 7822 genome, GCA_000147335.1
GCA_000153045.1          	172.18.8.70	48541	Synechococcus sp. WH 5701 genome, GCA_000153045.1
GCA_000153065.1          	172.18.8.70	48530	Synechococcus sp. RS9917 genome, GCA_000153065.1
GCA_000153285.1          	172.18.8.70	48423	Synechococcus sp. WH 7805 genome, GCA_000153285.1
GCA_000153805.1          	172.18.8.70	48509	Synechococcus sp. BL107 genome, GCA_000153805.1
GCA_000153825.1          	172.18.8.70	48477	Synechococcus sp. RS9916 genome, GCA_000153825.1
GCA_000155555.1          	172.18.8.70	48365	Coleofasciculus chthonoplastes PCC 7420 genome, GCA_000155555.1
GCA_000155595.1          	172.18.8.70	48319	Synechococcus sp. PCC 7335 genome, GCA_000155595.1
GCA_000155635.1          	172.18.8.70	48583	Cyanobium sp. PCC 7001 genome, GCA_000155635.1
GCA_000158595.1          	172.18.8.70	48472	Prochlorococcus marinus str. MIT 9202 genome, GCA_000158595.1
GCA_000161795.2          	172.18.8.70	48402	Synechococcus sp. WH 8109 genome, GCA_000161795.2
GCA_000167195.1          	172.18.8.70	48614	Crocosphaera watsonii WH 8501 genome, GCA_000167195.1
GCA_000169095.1          	172.18.8.70	48379	Lyngbya sp. PCC 8106 genome, GCA_000169095.1
GCA_000169135.1          	172.18.8.70	48548	Nodularia spumigena CCY9414 genome, GCA_000169135.1
GCA_000169335.1          	172.18.8.70	48623	Cyanothece sp. CCY0110 genome, GCA_000169335.1
GCA_000173555.1          	172.18.8.70	48466	Arthrospira maxima CS-328 genome, GCA_000173555.1
GCA_000175415.3          	172.18.8.70	48481	Arthrospira platensis str. Paraca genome, GCA_000175415.3
GCA_000175835.1          	172.18.8.70	48555	Cylindrospermopsis raciborskii CS-505 genome, GCA_000175835.1
GCA_000175855.1          	172.18.8.70	48382	Raphidiopsis brookii D9 genome, GCA_000175855.1
GCA_000176895.2          	172.18.8.70	48626	Arthrospira sp. PCC 8005 genome, GCA_000176895.2
GCA_000179235.1          	172.18.8.70	48411	Synechococcus sp. CB0101 genome, GCA_000179235.1
GCA_000179255.1          	172.18.8.70	48347	Synechococcus sp. CB0205 genome, GCA_000179255.1
GCA_000180455.1          	172.18.8.70	48362	Oscillatoria sp. PCC 6506 genome, GCA_000180455.1
GCA_000195775.1          	172.18.8.70	48631	Rhodopseudomonas palustris CGA009 genome, GCA_000195775.1
GCA_000195975.1          	172.18.8.70	48516	Synechococcus sp. WH 8102 genome, GCA_000195975.1
GCA_000196515.1          	172.18.8.70	48568	Nostoc azollae 0708 genome, GCA_000196515.1
GCA_000204075.1          	172.18.8.70	48524	Anabaena variabilis ATCC 29413 genome, GCA_000204075.1
GCA_000210375.1          	172.18.8.70	48424	Arthrospira platensis NIES-39 genome, GCA_000210375.1
GCA_000211815.1          	172.18.8.70	48318	Moorea producens 3L genome, GCA_000211815.1
GCA_000214075.2          	172.18.8.70	48609	Microcoleus vaginatus FGP-2 genome, GCA_000214075.2
GCA_000218705.1          	172.18.8.70	48267	Prochlorococcus marinus bv. HNLC1 genome, GCA_000218705.1
GCA_000218745.1          	172.18.8.70	48547	Prochlorococcus marinus bv. HNLC2 genome, GCA_000218745.1
GCA_000230675.2          	172.18.8.70	48571	Synechococcus sp. WH 8016 genome, GCA_000230675.2
GCA_000231365.2          	172.18.8.70	48383	Fischerella sp. JSC-11 genome, GCA_000231365.2
GCA_000231425.3          	172.18.8.70	48458	Cyanothece sp. ATCC 51472 genome, GCA_000231425.3
GCA_000235665.2          	172.18.8.70	48307	Crocosphaera watsonii WH 0003 genome, GCA_000235665.2
GCA_000238775.2          	172.18.8.70	48427	Acaryochloris sp. CCMEE 5410 genome, GCA_000238775.2
GCA_000252425.1          	172.18.8.70	48619	Prochloron didemni P2-Fiji genome, GCA_000252425.1
GCA_000252465.1          	172.18.8.70	48519	Prochloron didemni P3-Solomon genome, GCA_000252465.1
GCA_000252485.1          	172.18.8.70	48345	Prochloron didemni P4-Papua_New_Guinea genome, GCA_000252485.1
GCA_000270265.1          	172.18.8.70	48575	Synechocystis sp. PCC 6803 genome, GCA_000270265.1
GCA_000284135.1          	172.18.8.70	48533	Synechocystis sp. PCC 6803 substr. GT-I genome, GCA_000284135.1
GCA_000284215.1          	172.18.8.70	48470	Synechocystis sp. PCC 6803 substr. PCC-N genome, GCA_000284215.1
GCA_000284455.1          	172.18.8.70	48364	Synechocystis sp. PCC 6803 substr. PCC-P genome, GCA_000284455.1
GCA_000291785.1          	172.18.8.70	48340	Prochlorococcus sp. W4 genome, GCA_000291785.1
GCA_000291805.1          	172.18.8.70	48627	Prochlorococcus sp. W7 genome, GCA_000291805.1
GCA_000291825.1          	172.18.8.70	48492	Prochlorococcus sp. W8 genome, GCA_000291825.1
GCA_000291845.1          	172.18.8.70	48560	Prochlorococcus sp. W10 genome, GCA_000291845.1
GCA_000291865.1          	172.18.8.70	48545	Prochlorococcus sp. W6 genome, GCA_000291865.1
GCA_000291885.1          	172.18.8.70	48546	Prochlorococcus sp. W2 genome, GCA_000291885.1
GCA_000291905.1          	172.18.8.70	48294	Prochlorococcus sp. W3 genome, GCA_000291905.1
GCA_000291925.1          	172.18.8.70	48309	Prochlorococcus sp. W9 genome, GCA_000291925.1
GCA_000291945.1          	172.18.8.70	48468	Prochlorococcus sp. W11 genome, GCA_000291945.1
GCA_000291965.1          	172.18.8.70	48467	Prochlorococcus sp. W12 genome, GCA_000291965.1
GCA_000291985.1          	172.18.8.70	48587	Prochlorococcus sp. W5 genome, GCA_000291985.1
GCA_000297435.1          	172.18.8.70	48488	Microcystis sp. T1-4 genome, GCA_000297435.1
GCA_000300115.1          	172.18.8.70	48409	Tolypothrix sp. PCC 7601 genome, GCA_000300115.1
GCA_000307915.1          	172.18.8.70	48285	Arthrospira platensis C1 genome, GCA_000307915.1
GCA_000307995.2          	172.18.8.70	48436	Microcystis aeruginosa PCC 9432 genome, GCA_000307995.2
GCA_000309385.1          	172.18.8.70	48342	Nodosilinea nodulosa PCC 7104 genome, GCA_000309385.1
GCA_000309945.1          	172.18.8.70	48407	Oscillatoriales cyanobacterium JSC-12 genome, GCA_000309945.1
GCA_000312165.1          	172.18.8.70	48299	Microcystis aeruginosa PCC 9717 genome, GCA_000312165.1
GCA_000312185.1          	172.18.8.70	48316	Microcystis aeruginosa PCC 9443 genome, GCA_000312185.1
GCA_000312205.1          	172.18.8.70	48544	Microcystis aeruginosa PCC 7941 genome, GCA_000312205.1
GCA_000312225.1          	172.18.8.70	48346	Microcystis aeruginosa PCC 9807 genome, GCA_000312225.1
GCA_000312245.1          	172.18.8.70	48417	Microcystis aeruginosa PCC 9808 genome, GCA_000312245.1
GCA_000312265.1          	172.18.8.70	48476	Microcystis aeruginosa PCC 9809 genome, GCA_000312265.1
GCA_000312285.1          	172.18.8.70	48368	Microcystis aeruginosa PCC 9701 genome, GCA_000312285.1
GCA_000312705.1          	172.18.8.70	48482	Anabaena sp. 90 genome, GCA_000312705.1
GCA_000312725.1          	172.18.8.70	48370	Microcystis aeruginosa PCC 9806 genome, GCA_000312725.1
GCA_000314005.1          	172.18.8.70	48606	Spirulina subsalsa PCC 9445 genome, GCA_000314005.1
GCA_000315565.1          	172.18.8.70	48455	Mastigocladopsis repens PCC 10914 genome, GCA_000315565.1
GCA_000315585.1          	172.18.8.70	48552	Fischerella sp. PCC 9339 genome, GCA_000315585.1
GCA_000316115.1          	172.18.8.70	48618	Leptolyngbya sp. PCC 7375 genome, GCA_000316115.1
GCA_000316515.1          	172.18.8.70	48392	Cyanobium gracile PCC 6307 genome, GCA_000316515.1
GCA_000316575.1          	172.18.8.70	48465	Calothrix sp. PCC 7507 genome, GCA_000316575.1
GCA_000316605.1          	172.18.8.70	48620	Leptolyngbya sp. PCC 7376 genome, GCA_000316605.1
GCA_000316625.1          	172.18.8.70	48325	Nostoc sp. PCC 7107 genome, GCA_000316625.1
GCA_000316645.1          	172.18.8.70	48528	Nostoc sp. PCC 7524 genome, GCA_000316645.1
GCA_000316665.1          	172.18.8.70	48570	Rivularia sp. PCC 7116 genome, GCA_000316665.1
GCA_000316685.1          	172.18.8.70	48310	Synechococcus sp. PCC 6312 genome, GCA_000316685.1
GCA_000317025.1          	172.18.8.70	48272	Pleurocapsa sp. PCC 7327 genome, GCA_000317025.1
GCA_000317045.1          	172.18.8.70	48553	Geitlerinema sp. PCC 7407 genome, GCA_000317045.1
GCA_000317065.1          	172.18.8.70	48634	Pseudanabaena sp. PCC 7367 genome, GCA_000317065.1
GCA_000317085.1          	172.18.8.70	48491	Synechococcus sp. PCC 7502 genome, GCA_000317085.1
GCA_000317105.1          	172.18.8.70	48349	Oscillatoria acuminata PCC 6304 genome, GCA_000317105.1
GCA_000317125.1          	172.18.8.70	48479	Chroococcidiopsis thermalis PCC 7203 genome, GCA_000317125.1
GCA_000317145.1          	172.18.8.70	48578	Chamaesiphon minutus PCC 6605 genome, GCA_000317145.1
GCA_000317205.1          	172.18.8.70	48326	Fischerella muscicola PCC 7414 genome, GCA_000317205.1
GCA_000317225.1          	172.18.8.70	48494	Fischerella thermalis PCC 7521 genome, GCA_000317225.1
GCA_000317245.1          	172.18.8.70	48334	Fischerella muscicola SAG 1427-1 genome, GCA_000317245.1
GCA_000317265.1          	172.18.8.70	48304	Chlorogloeopsis fritschii PCC 9212 genome, GCA_000317265.1
GCA_000317285.1          	172.18.8.70	48416	Chlorogloeopsis fritschii PCC 6912 genome, GCA_000317285.1
GCA_000317435.1          	172.18.8.70	48540	Calothrix sp. PCC 6303 genome, GCA_000317435.1
GCA_000317475.1          	172.18.8.70	48515	Oscillatoria nigro-viridis PCC 7112 genome, GCA_000317475.1
GCA_000317495.1          	172.18.8.70	48284	Crinalium epipsammum PCC 9333 genome, GCA_000317495.1
GCA_000317515.1          	172.18.8.70	48499	Microcoleus sp. PCC 7113 genome, GCA_000317515.1
GCA_000317535.1          	172.18.8.70	48363	Cylindrospermum stagnale PCC 7417 genome, GCA_000317535.1
GCA_000317555.1          	172.18.8.70	48511	Gloeocapsa sp. PCC 7428 genome, GCA_000317555.1
GCA_000317575.1          	172.18.8.70	48590	Stanieria cyanosphaera PCC 7437 genome, GCA_000317575.1
GCA_000317615.1          	172.18.8.70	48474	Dactylococcopsis salina PCC 8305 genome, GCA_000317615.1
GCA_000317635.1          	172.18.8.70	48261	Halothece sp. PCC 7418 genome, GCA_000317635.1
GCA_000317655.1          	172.18.8.70	48522	Cyanobacterium stanieri PCC 7202 genome, GCA_000317655.1
GCA_000317675.1          	172.18.8.70	48348	Cyanobacterium aponinum PCC 10605 genome, GCA_000317675.1
GCA_000317695.1          	172.18.8.70	48589	Anabaena cylindrica PCC 7122 genome, GCA_000317695.1
GCA_000330925.1          	172.18.8.70	48286	Microcystis aeruginosa TAIHU98 genome, GCA_000330925.1
GCA_000331305.1          	172.18.8.70	48611	Calothrix sp. PCC 7103 genome, GCA_000331305.1
GCA_000332035.1          	172.18.8.70	48584	Gloeocapsa sp. PCC 73106 genome, GCA_000332035.1
GCA_000332055.1          	172.18.8.70	48532	Xenococcus sp. PCC 7305 genome, GCA_000332055.1
GCA_000332075.2          	172.18.8.70	48576	Synechocystis sp. PCC 7509 genome, GCA_000332075.2
GCA_000332095.2          	172.18.8.70	48360	Leptolyngbya sp. PCC 6406 genome, GCA_000332095.2
GCA_000332135.1          	172.18.8.70	48415	Anabaena sp. PCC 7108 genome, GCA_000332135.1
GCA_000332155.1          	172.18.8.70	48613	Kamptonema formosum PCC 6407 genome, GCA_000332155.1
GCA_000332175.1          	172.18.8.70	48566	Pseudanabaena sp. PCC 6802 genome, GCA_000332175.1
GCA_000332195.1          	172.18.8.70	48600	Pleurocapsa sp. PCC 7319 genome, GCA_000332195.1
GCA_000332215.1          	172.18.8.70	48333	Pseudanabaena biceps PCC 7429 genome, GCA_000332215.1
GCA_000332235.1          	172.18.8.70	48295	Geminocystis herdmanii PCC 6308 genome, GCA_000332235.1
GCA_000332255.1          	172.18.8.70	48408	cyanobacterium PCC 7702 genome, GCA_000332255.1
GCA_000332275.1          	172.18.8.70	48269	Synechococcus sp. PCC 7336 genome, GCA_000332275.1
GCA_000332295.1          	172.18.8.70	48377	Microchaete sp. PCC 7126 genome, GCA_000332295.1
GCA_000332315.1          	172.18.8.70	48602	Prochlorothrix hollandica PCC 9006 genome, GCA_000332315.1
GCA_000332335.1          	172.18.8.70	48608	Oscillatoria sp. PCC 10802 genome, GCA_000332335.1
GCA_000332355.1          	172.18.8.70	48535	Geitlerinema sp. PCC 7105 genome, GCA_000332355.1
GCA_000332585.1          	172.18.8.70	48478	Microcystis aeruginosa DIANCHI905 genome, GCA_000332585.1
GCA_000340565.3          	172.18.8.70	48428	Nodularia spumigena CCY9414 genome, GCA_000340565.3
GCA_000340785.1          	172.18.8.70	48475	Synechocystis sp. PCC 6803 genome, GCA_000340785.1
GCA_000341585.2          	172.18.8.70	48534	Prochlorothrix hollandica PCC 9006 genome, GCA_000341585.2
GCA_000346485.1          	172.18.8.70	48260	Scytonema hofmanni PCC 7110 genome, GCA_000346485.1
GCA_000350105.1          	172.18.8.70	48550	Richelia intracellularis HH01 genome, GCA_000350105.1
GCA_000350125.1          	172.18.8.70	48329	Richelia intracellularis HM01 genome, GCA_000350125.1
GCA_000353285.1          	172.18.8.70	48414	Leptolyngbya boryana PCC 6306 genome, GCA_000353285.1
GCA_000380225.1          	172.18.8.70	48603	filamentous cyanobacterium ESFC-1 genome, GCA_000380225.1
GCA_000412595.1          	172.18.8.70	48429	Microcystis aeruginosa SPC777 genome, GCA_000412595.1
GCA_000426905.1          	172.18.8.70	48315	Dolichospermum circinale AWQC131C genome, GCA_000426905.1
GCA_000426925.1          	172.18.8.70	48406	Dolichospermum circinale AWQC310F genome, GCA_000426925.1
GCA_000447295.1          	172.18.8.70	48599	Fischerella sp. PCC 9431 genome, GCA_000447295.1
GCA_000464665.1          	172.18.8.70	48605	Planktothrix agardhii NIVA-CYA 15 genome, GCA_000464665.1
GCA_000464725.1          	172.18.8.70	48448	Planktothrix agardhii NIVA-CYA 34 genome, GCA_000464725.1
GCA_000464745.1          	172.18.8.70	48390	Planktothrix mougeotii NIVA-CYA 405 genome, GCA_000464745.1
GCA_000464765.1          	172.18.8.70	48498	Planktothrix prolifica NIVA-CYA 406 genome, GCA_000464765.1
GCA_000464785.1          	172.18.8.70	48434	Planktothrix rubescens NIVA-CYA 407 genome, GCA_000464785.1
GCA_000464805.1          	172.18.8.70	48506	Planktothrix prolifica NIVA-CYA 540 genome, GCA_000464805.1
GCA_000464825.1          	172.18.8.70	48557	Planktothrix agardhii NIVA-CYA 56/3 genome, GCA_000464825.1
GCA_000464845.1          	172.18.8.70	48266	Planktothrix prolifica NIVA-CYA 98 genome, GCA_000464845.1
GCA_000472885.1          	172.18.8.70	48376	Mastigocoleus testarum BC008 genome, GCA_000472885.1
GCA_000473895.1          	172.18.8.70	48610	Rubidibacter lacunae KORDI 51-2 genome, GCA_000473895.1
GCA_000478195.2          	172.18.8.70	48375	Lyngbya aestuarii BL J genome, GCA_000478195.2
GCA_000478825.2          	172.18.8.70	48497	Synechocystis sp. PCC 6714 genome, GCA_000478825.2
GCA_000482245.1          	172.18.8.70	48514	Leptolyngbya sp. Heron Island J genome, GCA_000482245.1
GCA_000484535.1          	172.18.8.70	48542	Gloeobacter kilaueensis JS1 genome, GCA_000484535.1
GCA_000485815.1          	172.18.8.70	48323	Synechococcus sp. NKBG15041c genome, GCA_000485815.1
GCA_000505665.1          	172.18.8.70	48303	Thermosynechococcus sp. NK55a genome, GCA_000505665.1
GCA_000515235.1          	172.18.8.70	48500	Synechococcus sp. CC9616 genome, GCA_000515235.1
GCA_000517105.1          	172.18.8.70	48615	Fischerella sp. PCC 9605 genome, GCA_000517105.1
GCA_000521175.1          	172.18.8.70	48633	Aphanizomenon flos-aquae NIES-81 genome, GCA_000521175.1
GCA_000582685.1          	172.18.8.70	48293	Scytonema hofmanni UTEX 2349 genome, GCA_000582685.1
GCA_000586015.1          	172.18.8.70	48279	Candidatus Synechococcus spongiarum SH4 genome, GCA_000586015.1
GCA_000599945.1          	172.18.8.70	48265	Microcystis aeruginosa PCC 7005 genome, GCA_000599945.1
GCA_000613065.1          	172.18.8.70	48463	Richelia intracellularis genome, GCA_000613065.1
GCA_000633975.1          	172.18.8.70	48404	Prochlorococcus sp. scB241_526B17 genome, GCA_000633975.1
GCA_000633995.1          	172.18.8.70	48313	Prochlorococcus sp. scB241_526K3 genome, GCA_000633995.1
GCA_000634015.1          	172.18.8.70	48452	Prochlorococcus sp. scB241_526N9 genome, GCA_000634015.1
GCA_000634035.1          	172.18.8.70	48371	Prochlorococcus sp. scB241_527E14 genome, GCA_000634035.1
GCA_000634055.1          	172.18.8.70	48412	Prochlorococcus sp. scB241_527N11 genome, GCA_000634055.1
GCA_000634075.1          	172.18.8.70	48369	Prochlorococcus sp. scB241_528J14 genome, GCA_000634075.1
GCA_000634095.1          	172.18.8.70	48565	Prochlorococcus sp. scB241_528J8 genome, GCA_000634095.1
GCA_000634115.1          	172.18.8.70	48426	Prochlorococcus sp. scB241_528O2 genome, GCA_000634115.1
GCA_000634135.1          	172.18.8.70	48288	Prochlorococcus sp. scB241_528P14 genome, GCA_000634135.1
GCA_000634155.1          	172.18.8.70	48321	Prochlorococcus sp. scB241_529C4 genome, GCA_000634155.1
GCA_000634175.1          	172.18.8.70	48433	Prochlorococcus sp. scB241_529D18 genome, GCA_000634175.1
GCA_000634195.1          	172.18.8.70	48425	Prochlorococcus sp. scB243_495D8 genome, GCA_000634195.1
GCA_000634215.1          	172.18.8.70	48444	Prochlorococcus sp. scB243_495L20 genome, GCA_000634215.1
GCA_000634235.1          	172.18.8.70	48352	Prochlorococcus sp. scB243_495N16 genome, GCA_000634235.1
GCA_000634255.1          	172.18.8.70	48291	Prochlorococcus sp. scB243_496A2 genome, GCA_000634255.1
GCA_000634275.1          	172.18.8.70	48521	Prochlorococcus sp. scB243_497J18 genome, GCA_000634275.1
GCA_000634295.1          	172.18.8.70	48431	Prochlorococcus sp. scB243_498A3 genome, GCA_000634295.1
GCA_000634315.1          	172.18.8.70	48271	Prochlorococcus sp. scB243_498J20 genome, GCA_000634315.1
GCA_000634335.1          	172.18.8.70	48473	Prochlorococcus sp. scB243_498N4 genome, GCA_000634335.1
GCA_000634355.1          	172.18.8.70	48317	Prochlorococcus sp. scB243_498N8 genome, GCA_000634355.1
GCA_000634375.1          	172.18.8.70	48350	Prochlorococcus sp. scB245a_518A17 genome, GCA_000634375.1
GCA_000634395.1          	172.18.8.70	48592	Prochlorococcus sp. scB245a_518D8 genome, GCA_000634395.1
GCA_000634415.1          	172.18.8.70	48503	Prochlorococcus sp. scB245a_519A13 genome, GCA_000634415.1
GCA_000634435.1          	172.18.8.70	48504	Prochlorococcus sp. scB245a_519B7 genome, GCA_000634435.1
GCA_000634455.1          	172.18.8.70	48604	Prochlorococcus sp. scB245a_519O21 genome, GCA_000634455.1
GCA_000634475.1          	172.18.8.70	48518	Prochlorococcus sp. scB245a_520B18 genome, GCA_000634475.1
GCA_000634495.1          	172.18.8.70	48480	Prochlorococcus sp. scB245a_520D2 genome, GCA_000634495.1
GCA_000634515.1          	172.18.8.70	48629	Prochlorococcus sp. scB245a_520K10 genome, GCA_000634515.1
GCA_000634535.1          	172.18.8.70	48622	Prochlorococcus sp. scB245a_520M11 genome, GCA_000634535.1
GCA_000634555.2          	172.18.8.70	48489	Prochlorococcus sp. scB245a_521A19 genome, GCA_000634555.2
GCA_000634575.1          	172.18.8.70	48361	Prochlorococcus sp. scB245a_521N3 genome, GCA_000634575.1
GCA_000634595.1          	172.18.8.70	48621	Prochlorococcus sp. scB245a_521O23 genome, GCA_000634595.1
GCA_000634615.1          	172.18.8.70	48359	Prochlorococcus sp. scB241_526B19 genome, GCA_000634615.1
GCA_000634635.1          	172.18.8.70	48396	Prochlorococcus sp. scB241_526B22 genome, GCA_000634635.1
GCA_000634655.1          	172.18.8.70	48339	Prochlorococcus sp. scB241_526N5 genome, GCA_000634655.1
GCA_000634675.1          	172.18.8.70	48593	Prochlorococcus sp. scB241_527E15 genome, GCA_000634675.1
GCA_000634695.1          	172.18.8.70	48625	Prochlorococcus sp. scB241_527L15 genome, GCA_000634695.1
GCA_000634715.1          	172.18.8.70	48353	Prochlorococcus sp. scB241_528K19 genome, GCA_000634715.1
GCA_000634735.1          	172.18.8.70	48582	Prochlorococcus sp. scB241_528N17 genome, GCA_000634735.1
GCA_000634755.1          	172.18.8.70	48389	Prochlorococcus sp. scB241_528N20 genome, GCA_000634755.1
GCA_000634775.1          	172.18.8.70	48527	Prochlorococcus sp. scB241_528N8 genome, GCA_000634775.1
GCA_000634795.1          	172.18.8.70	48282	Prochlorococcus sp. scB241_529J15 genome, GCA_000634795.1
GCA_000634815.1          	172.18.8.70	48617	Prochlorococcus sp. scB243_495G23 genome, GCA_000634815.1
GCA_000634835.1          	172.18.8.70	48372	Prochlorococcus sp. scB243_495I8 genome, GCA_000634835.1
GCA_000634855.1          	172.18.8.70	48397	Prochlorococcus sp. scB243_495N4 genome, GCA_000634855.1
GCA_000634875.1          	172.18.8.70	48268	Prochlorococcus sp. scB243_495P20 genome, GCA_000634875.1
GCA_000634895.1          	172.18.8.70	48283	Prochlorococcus sp. scB243_496E10 genome, GCA_000634895.1
GCA_000634915.1          	172.18.8.70	48366	Prochlorococcus sp. scB243_496G15 genome, GCA_000634915.1
GCA_000634935.1          	172.18.8.70	48439	Prochlorococcus sp. scB243_497I20 genome, GCA_000634935.1
GCA_000634955.1          	172.18.8.70	48305	Prochlorococcus sp. scB243_497N18 genome, GCA_000634955.1
GCA_000634975.1          	172.18.8.70	48598	Prochlorococcus sp. scB243_498B22 genome, GCA_000634975.1
GCA_000634995.1          	172.18.8.70	48628	Prochlorococcus sp. scB243_498C16 genome, GCA_000634995.1
GCA_000635015.1          	172.18.8.70	48586	Prochlorococcus sp. scB243_498I20 genome, GCA_000635015.1
GCA_000635035.1          	172.18.8.70	48275	Prochlorococcus sp. scB243_498L10 genome, GCA_000635035.1
GCA_000635055.1          	172.18.8.70	48490	Prochlorococcus sp. scB245a_518A6 genome, GCA_000635055.1
GCA_000635075.1          	172.18.8.70	48296	Prochlorococcus sp. scB245a_518E10 genome, GCA_000635075.1
GCA_000635095.1          	172.18.8.70	48378	Prochlorococcus sp. scB245a_518J7 genome, GCA_000635095.1
GCA_000635115.1          	172.18.8.70	48387	Prochlorococcus sp. scB245a_518K17 genome, GCA_000635115.1
GCA_000635135.1          	172.18.8.70	48276	Prochlorococcus sp. scB245a_518O7 genome, GCA_000635135.1
GCA_000635155.1          	172.18.8.70	48335	Prochlorococcus sp. scB245a_519C7 genome, GCA_000635155.1
GCA_000635175.1          	172.18.8.70	48493	Prochlorococcus sp. scB245a_519E23 genome, GCA_000635175.1
GCA_000635195.1          	172.18.8.70	48531	Prochlorococcus sp. scB245a_519L21 genome, GCA_000635195.1
GCA_000635215.1          	172.18.8.70	48274	Prochlorococcus sp. scB245a_521C8 genome, GCA_000635215.1
GCA_000635235.1          	172.18.8.70	48577	Prochlorococcus sp. scB245a_521K15 genome, GCA_000635235.1
GCA_000635255.1          	172.18.8.70	48264	Prochlorococcus sp. scB245a_521O20 genome, GCA_000635255.1
GCA_000635275.1          	172.18.8.70	48585	Prochlorococcus sp. scB241_526D20 genome, GCA_000635275.1
GCA_000635295.1          	172.18.8.70	48441	Prochlorococcus sp. scB241_527G5 genome, GCA_000635295.1
GCA_000635315.1          	172.18.8.70	48438	Prochlorococcus sp. scB241_527I9 genome, GCA_000635315.1
GCA_000635335.1          	172.18.8.70	48537	Prochlorococcus sp. scB241_527L16 genome, GCA_000635335.1
GCA_000635355.1          	172.18.8.70	48447	Prochlorococcus sp. scB241_527L22 genome, GCA_000635355.1
GCA_000635375.1          	172.18.8.70	48367	Prochlorococcus sp. scB241_527P5 genome, GCA_000635375.1
GCA_000635395.1          	172.18.8.70	48594	Prochlorococcus sp. scB241_528P18 genome, GCA_000635395.1
GCA_000635415.1          	172.18.8.70	48322	Prochlorococcus sp. scB241_529B19 genome, GCA_000635415.1
GCA_000635435.1          	172.18.8.70	48320	Prochlorococcus sp. scB241_529J11 genome, GCA_000635435.1
GCA_000635455.1          	172.18.8.70	48432	Prochlorococcus sp. scB241_529J16 genome, GCA_000635455.1
GCA_000635475.1          	172.18.8.70	48308	Prochlorococcus sp. scB241_529O19 genome, GCA_000635475.1
GCA_000635495.1          	172.18.8.70	48263	Prochlorococcus sp. scB243_495K23 genome, GCA_000635495.1
GCA_000635515.1          	172.18.8.70	48380	Prochlorococcus sp. scB243_495N3 genome, GCA_000635515.1
GCA_000635535.1          	172.18.8.70	48388	Prochlorococcus sp. scB243_496M6 genome, GCA_000635535.1
GCA_000635555.1          	172.18.8.70	48440	Prochlorococcus sp. scB243_496N4 genome, GCA_000635555.1
GCA_000635575.1          	172.18.8.70	48507	Prochlorococcus sp. scB243_497E17 genome, GCA_000635575.1
GCA_000635595.1          	172.18.8.70	48591	Prochlorococcus sp. scB243_498B23 genome, GCA_000635595.1
GCA_000635615.1          	172.18.8.70	48508	Prochlorococcus sp. scB243_498F21 genome, GCA_000635615.1
GCA_000635635.1          	172.18.8.70	48526	Prochlorococcus sp. scB243_498G3 genome, GCA_000635635.1
GCA_000635655.1          	172.18.8.70	48403	Prochlorococcus sp. scB243_498M14 genome, GCA_000635655.1
GCA_000635675.1          	172.18.8.70	48453	Prochlorococcus sp. scB243_498P15 genome, GCA_000635675.1
GCA_000635695.1          	172.18.8.70	48405	Prochlorococcus sp. scB243_498P3 genome, GCA_000635695.1
GCA_000635715.1          	172.18.8.70	48496	Prochlorococcus sp. scB245a_518I6 genome, GCA_000635715.1
GCA_000635735.1          	172.18.8.70	48632	Prochlorococcus sp. scB245a_519D13 genome, GCA_000635735.1
GCA_000635755.1          	172.18.8.70	48495	Prochlorococcus sp. scB245a_519G16 genome, GCA_000635755.1
GCA_000635775.1          	172.18.8.70	48337	Prochlorococcus sp. scB245a_519O11 genome, GCA_000635775.1
GCA_000635795.1          	172.18.8.70	48567	Prochlorococcus sp. scB245a_520E22 genome, GCA_000635795.1
GCA_000635815.1          	172.18.8.70	48344	Prochlorococcus sp. scB245a_520F22 genome, GCA_000635815.1
GCA_000635835.1          	172.18.8.70	48386	Prochlorococcus sp. scB245a_521B10 genome, GCA_000635835.1
GCA_000635855.1          	172.18.8.70	48290	Prochlorococcus sp. scB245a_521M10 genome, GCA_000635855.1
GCA_000635875.1          	172.18.8.70	48597	Prochlorococcus sp. scB245a_521N5 genome, GCA_000635875.1
GCA_000708525.1          	172.18.8.70	48469	Cyanobium sp. CACIAM 14 genome, GCA_000708525.1
GCA_000710505.1          	172.18.8.70	48573	Planktothrix agardhii NIVA-CYA 126/8 genome, GCA_000710505.1
GCA_000715475.1          	172.18.8.70	48523	Synechococcus sp. NKBG042902 genome, GCA_000715475.1
GCA_000733415.1          	172.18.8.70	48435	Leptolyngbya sp. JSC-1 genome, GCA_000733415.1
GCA_000734895.2          	172.18.8.70	48312	Calothrix sp. 336/3 genome, GCA_000734895.2
GCA_000737535.1          	172.18.8.70	48538	Synechococcus sp. KORDI-100 genome, GCA_000737535.1
GCA_000737575.1          	172.18.8.70	48635	Synechococcus sp. KORDI-49 genome, GCA_000737575.1
GCA_000737595.1          	172.18.8.70	48373	Synechococcus sp. KORDI-52 genome, GCA_000737595.1
GCA_000737945.1          	172.18.8.70	48513	Candidatus Atelocyanobacterium thalassa isolate SIO64986 genome, GCA_000737945.1
GCA_000756305.1          	172.18.8.70	48277	Myxosarcina sp. GI1 genome, GCA_000756305.1
GCA_000757845.1          	172.18.8.70	48450	Prochlorococcus sp. MIT 0604 genome, GCA_000757845.1
GCA_000757865.1          	172.18.8.70	48487	Prochlorococcus sp. MIT 0801 genome, GCA_000757865.1
GCA_000759855.1          	172.18.8.70	48381	Prochlorococcus marinus str. MIT 9107 genome, GCA_000759855.1
GCA_000759865.1          	172.18.8.70	48616	Prochlorococcus marinus str. MIT 9116 genome, GCA_000759865.1
GCA_000759875.1          	172.18.8.70	48607	Prochlorococcus marinus str. EQPAC1 genome, GCA_000759875.1
GCA_000759885.1          	172.18.8.70	48551	Prochlorococcus marinus str. GP2 genome, GCA_000759885.1
GCA_000759935.1          	172.18.8.70	48324	Prochlorococcus marinus str. MIT 9123 genome, GCA_000759935.1
GCA_000759955.1          	172.18.8.70	48399	Prochlorococcus marinus str. MIT 9201 genome, GCA_000759955.1
GCA_000759975.1          	172.18.8.70	48418	Prochlorococcus marinus str. MIT 9302 genome, GCA_000759975.1
GCA_000760015.1          	172.18.8.70	48385	Prochlorococcus marinus str. MIT 9311 genome, GCA_000760015.1
GCA_000760035.1          	172.18.8.70	48558	Prochlorococcus marinus str. MIT 9314 genome, GCA_000760035.1
GCA_000760055.1          	172.18.8.70	48289	Prochlorococcus marinus str. MIT 9321 genome, GCA_000760055.1
GCA_000760075.1          	172.18.8.70	48393	Prochlorococcus marinus str. MIT 9322 genome, GCA_000760075.1
GCA_000760095.1          	172.18.8.70	48422	Prochlorococcus marinus str. MIT 9401 genome, GCA_000760095.1
GCA_000760115.1          	172.18.8.70	48281	Prochlorococcus marinus str. SB genome, GCA_000760115.1
GCA_000760155.1          	172.18.8.70	48443	Prochlorococcus marinus str. LG genome, GCA_000760155.1
GCA_000760175.1          	172.18.8.70	48355	Prochlorococcus sp. MIT 0601 genome, GCA_000760175.1
GCA_000760195.1          	172.18.8.70	48588	Prochlorococcus sp. MIT 0602 genome, GCA_000760195.1
GCA_000760215.1          	172.18.8.70	48501	Prochlorococcus sp. MIT 0603 genome, GCA_000760215.1
GCA_000760235.1          	172.18.8.70	48278	Prochlorococcus marinus str. PAC1 genome, GCA_000760235.1
GCA_000760255.1          	172.18.8.70	48394	Prochlorococcus marinus str. SS2 genome, GCA_000760255.1
GCA_000760275.1          	172.18.8.70	48302	Prochlorococcus marinus str. SS35 genome, GCA_000760275.1
GCA_000760295.1          	172.18.8.70	48374	Prochlorococcus sp. MIT 0701 genome, GCA_000760295.1
GCA_000760315.1          	172.18.8.70	48398	Prochlorococcus sp. MIT 0702 genome, GCA_000760315.1
GCA_000760335.1          	172.18.8.70	48354	Prochlorococcus sp. MIT 0703 genome, GCA_000760335.1
GCA_000760355.1          	172.18.8.70	48460	Prochlorococcus marinus str. SS51 genome, GCA_000760355.1
GCA_000760375.1          	172.18.8.70	48510	Prochlorococcus sp. SS52 genome, GCA_000760375.1
GCA_000760695.2          	172.18.8.70	48300	Tolypothrix bouteillei VB521301 genome, GCA_000760695.2
GCA_000763385.1          	172.18.8.70	48563	Leptolyngbya sp. KIOST-1 genome, GCA_000763385.1
GCA_000775285.1          	172.18.8.70	48549	Neosynechococcus sphagnicola sy1 genome, GCA_000775285.1
GCA_000787675.1          	172.18.8.70	48338	Microcystis aeruginosa NIES-44 genome, GCA_000787675.1
GCA_000789435.1          	172.18.8.70	48419	Aphanizomenon flos-aquae 2012/KM1/D3 genome, GCA_000789435.1
GCA_000817325.1          	172.18.8.70	48410	Synechococcus sp. UTEX 2973 genome, GCA_000817325.1
GCA_000817735.1          	172.18.8.70	48451	Scytonema millei VB511283 genome, GCA_000817735.1
GCA_000817745.1          	172.18.8.70	48358	Aphanocapsa montana BDHKU210001 genome, GCA_000817745.1
GCA_000817775.1          	172.18.8.70	48569	Lyngbya confervoides BDU141951 genome, GCA_000817775.1
GCA_000817785.1          	172.18.8.70	48561	Hassallia byssoidea VB512170 genome, GCA_000817785.1
GCA_000828075.1          	172.18.8.70	48595	Tolypothrix campylonemoides VB511288 genome, GCA_000828075.1
GCA_000828085.1          	172.18.8.70	48311	Scytonema tolypothrichoides VB-61278 genome, GCA_000828085.1
GCA_000829235.1          	172.18.8.70	48280	cyanobacterium endosymbiont of Epithemia turgida isolate EtSB Lake Yunoko genome, GCA_000829235.1
GCA_000934435.1          	172.18.8.70	48336	Mastigocladus laminosus UU774 genome, GCA_000934435.1
GCA_000952155.1          	172.18.8.70	48331	Chroococcales cyanobacterium CENA595 genome, GCA_000952155.1
GCA_000963755.2          	172.18.8.70	48512	Trichodesmium erythraeum 21-75 genome, GCA_000963755.2
GCA_000972705.2          	172.18.8.70	48502	Limnoraphis robusta CS-951 genome, GCA_000972705.2
GCA_000973065.1          	172.18.8.70	48357	Arthrospira sp. PCC 8005 genome, GCA_000973065.1
GCA_000974245.1          	172.18.8.70	48559	Arthrospira sp. TJSD091 genome, GCA_000974245.1
GCA_000981785.1          	172.18.8.70	48536	Microcystis aeruginosa NIES-2549 genome, GCA_000981785.1
GCA_000987385.1          	172.18.8.70	48384	Trichodesmium thiebautii H9-4 genome, GCA_000987385.1
GCA_001007625.1          	172.18.8.70	48292	Candidatus Synechococcus spongiarum 142 genome, GCA_001007625.1
GCA_001007635.1          	172.18.8.70	48306	Candidatus Synechococcus spongiarum 15L genome, GCA_001007635.1
GCA_001007665.1          	172.18.8.70	48612	Candidatus Synechococcus spongiarum SP3 genome, GCA_001007665.1
GCA_001039265.1          	172.18.8.70	48471	Synechococcus sp. GFB01 genome, GCA_001039265.1
GCA_001039555.1          	172.18.8.70	48273	Crocosphaera watsonii WH 8502 genome, GCA_001039555.1
GCA_001039615.1          	172.18.8.70	48624	Crocosphaera watsonii WH 0401 genome, GCA_001039615.1
GCA_001039635.1          	172.18.8.70	48327	Crocosphaera watsonii WH 0402 genome, GCA_001039635.1
GCA_001040845.1          	172.18.8.70	48454	Synechococcus sp. WH 8020 genome, GCA_001040845.1
GCA_001050835.1          	172.18.8.70	48564	Crocosphaera watsonii WH 0005 genome, GCA_001050835.1
GCA_001180245.1          	172.18.8.70	48484	Prochlorococcus marinus genome, GCA_001180245.1
GCA_001180265.1          	172.18.8.70	48485	Prochlorococcus marinus genome, GCA_001180265.1
GCA_001180285.1          	172.18.8.70	48562	Prochlorococcus marinus genome, GCA_001180285.1
GCA_001180305.1          	172.18.8.70	48445	Prochlorococcus marinus genome, GCA_001180305.1
GCA_001180325.1          	172.18.8.70	48446	Prochlorococcus marinus genome, GCA_001180325.1
GCA_001182765.1          	172.18.8.70	48430	Synechococcus sp. WH 8103 genome, GCA_001182765.1
GCA_001264245.1          	172.18.8.70	48539	Microcystis panniformis FACHB-1757 genome, GCA_001264245.1
GCA_001275395.1          	172.18.8.70	48456	Hapalosiphon sp. MRB220 genome, GCA_001275395.1
GCA_001276715.1          	172.18.8.70	48297	Planktothricoides sp. SR001 genome, GCA_001276715.1
GCA_001277295.1          	172.18.8.70	48596	Anabaena sp. wa102 genome, GCA_001277295.1
GCA_001298445.1          	172.18.8.70	48529	Nostoc piscinale CENA21 genome, GCA_001298445.1
GCA_001314865.1          	172.18.8.70	48420	Phormidesmis priestleyi Ana genome, GCA_001314865.1
GCA_001314905.1          	172.18.8.70	48328	Phormidium sp. OSCR genome, GCA_001314905.1
GCA_001318385.1          	172.18.8.70	48579	Synechocystis sp. PCC 6803 genome, GCA_001318385.1
GCA_001402795.1          	172.18.8.70	48341	Pseudanabaena sp. Roaring Creek genome, GCA_001402795.1
GCA_001456025.1          	172.18.8.70	48459	Mastigocoleus testarum BC008 genome, GCA_001456025.1
GCA_001458455.1          	172.18.8.70	48442	Chrysosporum ovalisporum genome, GCA_001458455.1
--EOS--

return 1 ;
