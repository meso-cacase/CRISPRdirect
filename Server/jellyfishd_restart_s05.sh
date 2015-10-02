#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_s00.pl"
HASHDIR="/ssd/jellyhash"

cd $HASHDIR/OryAfe1.0/ ; $JELFISH -p 48098 -k 23 -hash OryAfe1.0_23nt.jf >> OryAfe1.0_23nt.log 2>&1 &
cd $HASHDIR/OryAfe1.0/ ; $JELFISH -p 47098 -k 15 -hash OryAfe1.0_15nt.jf >> OryAfe1.0_15nt.log 2>&1 &
cd $HASHDIR/OryAfe1.0/ ; $JELFISH -p 46098 -k 11 -hash OryAfe1.0_11nt.jf >> OryAfe1.0_11nt.log 2>&1 &

cd $HASHDIR/PoeFor_5.1.2/ ; $JELFISH -p 48099 -k 23 -hash PoeFor_5.1.2_23nt.jf >> PoeFor_5.1.2_23nt.log 2>&1 &
cd $HASHDIR/PoeFor_5.1.2/ ; $JELFISH -p 47099 -k 15 -hash PoeFor_5.1.2_15nt.jf >> PoeFor_5.1.2_15nt.log 2>&1 &
cd $HASHDIR/PoeFor_5.1.2/ ; $JELFISH -p 46099 -k 11 -hash PoeFor_5.1.2_11nt.jf >> PoeFor_5.1.2_11nt.log 2>&1 &

cd $HASHDIR/CSAV2.0/ ; $JELFISH -p 48100 -k 23 -hash CSAV2.0_23nt.jf >> CSAV2.0_23nt.log 2>&1 &
cd $HASHDIR/CSAV2.0/ ; $JELFISH -p 47100 -k 15 -hash CSAV2.0_15nt.jf >> CSAV2.0_15nt.log 2>&1 &
cd $HASHDIR/CSAV2.0/ ; $JELFISH -p 46100 -k 11 -hash CSAV2.0_11nt.jf >> CSAV2.0_11nt.log 2>&1 &

cd $HASHDIR/AstMex102/ ; $JELFISH -p 48101 -k 23 -hash AstMex102_23nt.jf >> AstMex102_23nt.log 2>&1 &
cd $HASHDIR/AstMex102/ ; $JELFISH -p 47101 -k 15 -hash AstMex102_15nt.jf >> AstMex102_15nt.log 2>&1 &
cd $HASHDIR/AstMex102/ ; $JELFISH -p 46101 -k 11 -hash AstMex102_11nt.jf >> AstMex102_11nt.log 2>&1 &

cd $HASHDIR/PelSin_1.0/ ; $JELFISH -p 48102 -k 23 -hash PelSin_1.0_23nt.jf >> PelSin_1.0_23nt.log 2>&1 &
cd $HASHDIR/PelSin_1.0/ ; $JELFISH -p 47102 -k 15 -hash PelSin_1.0_15nt.jf >> PelSin_1.0_15nt.log 2>&1 &
cd $HASHDIR/PelSin_1.0/ ; $JELFISH -p 46102 -k 11 -hash PelSin_1.0_11nt.jf >> PelSin_1.0_11nt.log 2>&1 &

cd $HASHDIR/MacFas5.0/ ; $JELFISH -p 48103 -k 23 -hash MacFas5.0_23nt.jf >> MacFas5.0_23nt.log 2>&1 &
cd $HASHDIR/MacFas5.0/ ; $JELFISH -p 47103 -k 15 -hash MacFas5.0_15nt.jf >> MacFas5.0_15nt.log 2>&1 &
cd $HASHDIR/MacFas5.0/ ; $JELFISH -p 46103 -k 11 -hash MacFas5.0_11nt.jf >> MacFas5.0_11nt.log 2>&1 &

cd $HASHDIR/BGI_duck_1.0/ ; $JELFISH -p 48104 -k 23 -hash BGI_duck_1.0_23nt.jf >> BGI_duck_1.0_23nt.log 2>&1 &
cd $HASHDIR/BGI_duck_1.0/ ; $JELFISH -p 47104 -k 15 -hash BGI_duck_1.0_15nt.jf >> BGI_duck_1.0_15nt.log 2>&1 &
cd $HASHDIR/BGI_duck_1.0/ ; $JELFISH -p 46104 -k 11 -hash BGI_duck_1.0_11nt.jf >> BGI_duck_1.0_11nt.log 2>&1 &

cd $HASHDIR/FicAlb_1.4/ ; $JELFISH -p 48105 -k 23 -hash FicAlb_1.4_23nt.jf >> FicAlb_1.4_23nt.log 2>&1 &
cd $HASHDIR/FicAlb_1.4/ ; $JELFISH -p 47105 -k 15 -hash FicAlb_1.4_15nt.jf >> FicAlb_1.4_15nt.log 2>&1 &
cd $HASHDIR/FicAlb_1.4/ ; $JELFISH -p 46105 -k 11 -hash FicAlb_1.4_11nt.jf >> FicAlb_1.4_11nt.log 2>&1 &

cd $HASHDIR/Pham/ ; $JELFISH -p 48106 -k 23 -hash Pham_23nt.jf >> Pham_23nt.log 2>&1 &
cd $HASHDIR/Pham/ ; $JELFISH -p 47106 -k 15 -hash Pham_15nt.jf >> Pham_15nt.log 2>&1 &
cd $HASHDIR/Pham/ ; $JELFISH -p 46106 -k 11 -hash Pham_11nt.jf >> Pham_11nt.log 2>&1 &

cd $HASHDIR/Xipmac4.4.2/ ; $JELFISH -p 48107 -k 23 -hash Xipmac4.4.2_23nt.jf >> Xipmac4.4.2_23nt.log 2>&1 &
cd $HASHDIR/Xipmac4.4.2/ ; $JELFISH -p 47107 -k 15 -hash Xipmac4.4.2_15nt.jf >> Xipmac4.4.2_15nt.log 2>&1 &
cd $HASHDIR/Xipmac4.4.2/ ; $JELFISH -p 46107 -k 11 -hash Xipmac4.4.2_11nt.jf >> Xipmac4.4.2_11nt.log 2>&1 &

cd $HASHDIR/MicOch1.0/ ; $JELFISH -p 48108 -k 23 -hash MicOch1.0_23nt.jf >> MicOch1.0_23nt.log 2>&1 &
cd $HASHDIR/MicOch1.0/ ; $JELFISH -p 47108 -k 15 -hash MicOch1.0_15nt.jf >> MicOch1.0_15nt.log 2>&1 &
cd $HASHDIR/MicOch1.0/ ; $JELFISH -p 46108 -k 11 -hash MicOch1.0_11nt.jf >> MicOch1.0_11nt.log 2>&1 &

cd $HASHDIR/PhyMac_2.0.2/ ; $JELFISH -p 48109 -k 23 -hash PhyMac_2.0.2_23nt.jf >> PhyMac_2.0.2_23nt.log 2>&1 &
cd $HASHDIR/PhyMac_2.0.2/ ; $JELFISH -p 47109 -k 15 -hash PhyMac_2.0.2_15nt.jf >> PhyMac_2.0.2_15nt.log 2>&1 &
cd $HASHDIR/PhyMac_2.0.2/ ; $JELFISH -p 46109 -k 11 -hash PhyMac_2.0.2_11nt.jf >> PhyMac_2.0.2_11nt.log 2>&1 &

cd $HASHDIR/LepOcu1/ ; $JELFISH -p 48110 -k 23 -hash LepOcu1_23nt.jf >> LepOcu1_23nt.log 2>&1 &
cd $HASHDIR/LepOcu1/ ; $JELFISH -p 47110 -k 15 -hash LepOcu1_15nt.jf >> LepOcu1_15nt.log 2>&1 &
cd $HASHDIR/LepOcu1/ ; $JELFISH -p 46110 -k 11 -hash LepOcu1_11nt.jf >> LepOcu1_11nt.log 2>&1 &

cd $HASHDIR/ChlSab1.1/ ; $JELFISH -p 48111 -k 23 -hash ChlSab1.1_23nt.jf >> ChlSab1.1_23nt.log 2>&1 &
cd $HASHDIR/ChlSab1.1/ ; $JELFISH -p 47111 -k 15 -hash ChlSab1.1_15nt.jf >> ChlSab1.1_15nt.log 2>&1 &
cd $HASHDIR/ChlSab1.1/ ; $JELFISH -p 46111 -k 11 -hash ChlSab1.1_11nt.jf >> ChlSab1.1_11nt.log 2>&1 &

cd $HASHDIR/Acyr_2.0/ ; $JELFISH -p 48112 -k 23 -hash Acyr_2.0_23nt.jf >> Acyr_2.0_23nt.log 2>&1 &
cd $HASHDIR/Acyr_2.0/ ; $JELFISH -p 47112 -k 15 -hash Acyr_2.0_15nt.jf >> Acyr_2.0_15nt.log 2>&1 &
cd $HASHDIR/Acyr_2.0/ ; $JELFISH -p 46112 -k 11 -hash Acyr_2.0_11nt.jf >> Acyr_2.0_11nt.log 2>&1 &

cd $HASHDIR/AaegL3/ ; $JELFISH -p 48113 -k 23 -hash AaegL3_23nt.jf >> AaegL3_23nt.log 2>&1 &
cd $HASHDIR/AaegL3/ ; $JELFISH -p 47113 -k 15 -hash AaegL3_15nt.jf >> AaegL3_15nt.log 2>&1 &
cd $HASHDIR/AaegL3/ ; $JELFISH -p 46113 -k 11 -hash AaegL3_11nt.jf >> AaegL3_11nt.log 2>&1 &

cd $HASHDIR/Aqu1/ ; $JELFISH -p 48114 -k 23 -hash Aqu1_23nt.jf >> Aqu1_23nt.log 2>&1 &
cd $HASHDIR/Aqu1/ ; $JELFISH -p 47114 -k 15 -hash Aqu1_15nt.jf >> Aqu1_15nt.log 2>&1 &
cd $HASHDIR/Aqu1/ ; $JELFISH -p 46114 -k 11 -hash Aqu1_11nt.jf >> Aqu1_11nt.log 2>&1 &

cd $HASHDIR/AdarC3/ ; $JELFISH -p 48115 -k 23 -hash AdarC3_23nt.jf >> AdarC3_23nt.log 2>&1 &
cd $HASHDIR/AdarC3/ ; $JELFISH -p 47115 -k 15 -hash AdarC3_15nt.jf >> AdarC3_15nt.log 2>&1 &
cd $HASHDIR/AdarC3/ ; $JELFISH -p 46115 -k 11 -hash AdarC3_11nt.jf >> AdarC3_11nt.log 2>&1 &

cd $HASHDIR/Attacep1.0/ ; $JELFISH -p 48116 -k 23 -hash Attacep1.0_23nt.jf >> Attacep1.0_23nt.log 2>&1 &
cd $HASHDIR/Attacep1.0/ ; $JELFISH -p 47116 -k 15 -hash Attacep1.0_15nt.jf >> Attacep1.0_15nt.log 2>&1 &
cd $HASHDIR/Attacep1.0/ ; $JELFISH -p 46116 -k 11 -hash Attacep1.0_11nt.jf >> Attacep1.0_11nt.log 2>&1 &

cd $HASHDIR/ASM15162v1/ ; $JELFISH -p 48117 -k 23 -hash ASM15162v1_23nt.jf >> ASM15162v1_23nt.log 2>&1 &
cd $HASHDIR/ASM15162v1/ ; $JELFISH -p 47117 -k 15 -hash ASM15162v1_15nt.jf >> ASM15162v1_15nt.log 2>&1 &
cd $HASHDIR/ASM15162v1/ ; $JELFISH -p 46117 -k 11 -hash ASM15162v1_11nt.jf >> ASM15162v1_11nt.log 2>&1 &

cd $HASHDIR/B_malayi_3.0/ ; $JELFISH -p 48118 -k 23 -hash B_malayi_3.0_23nt.jf >> B_malayi_3.0_23nt.log 2>&1 &
cd $HASHDIR/B_malayi_3.0/ ; $JELFISH -p 47118 -k 15 -hash B_malayi_3.0_15nt.jf >> B_malayi_3.0_15nt.log 2>&1 &
cd $HASHDIR/B_malayi_3.0/ ; $JELFISH -p 46118 -k 11 -hash B_malayi_3.0_11nt.jf >> B_malayi_3.0_11nt.log 2>&1 &

cd $HASHDIR/Capte_v1.0/ ; $JELFISH -p 48119 -k 23 -hash Capte_v1.0_23nt.jf >> Capte_v1.0_23nt.log 2>&1 &
cd $HASHDIR/Capte_v1.0/ ; $JELFISH -p 47119 -k 15 -hash Capte_v1.0_15nt.jf >> Capte_v1.0_15nt.log 2>&1 &
cd $HASHDIR/Capte_v1.0/ ; $JELFISH -p 46119 -k 11 -hash Capte_v1.0_11nt.jf >> Capte_v1.0_11nt.log 2>&1 &

cd $HASHDIR/oyster_v9/ ; $JELFISH -p 48120 -k 23 -hash oyster_v9_23nt.jf >> oyster_v9_23nt.log 2>&1 &
cd $HASHDIR/oyster_v9/ ; $JELFISH -p 47120 -k 15 -hash oyster_v9_15nt.jf >> oyster_v9_15nt.log 2>&1 &
cd $HASHDIR/oyster_v9/ ; $JELFISH -p 46120 -k 11 -hash oyster_v9_11nt.jf >> oyster_v9_11nt.log 2>&1 &

cd $HASHDIR/CpipJ2/ ; $JELFISH -p 48121 -k 23 -hash CpipJ2_23nt.jf >> CpipJ2_23nt.log 2>&1 &
cd $HASHDIR/CpipJ2/ ; $JELFISH -p 47121 -k 15 -hash CpipJ2_15nt.jf >> CpipJ2_15nt.log 2>&1 &
cd $HASHDIR/CpipJ2/ ; $JELFISH -p 46121 -k 11 -hash CpipJ2_11nt.jf >> CpipJ2_11nt.log 2>&1 &

cd $HASHDIR/DanPle_1.0/ ; $JELFISH -p 48122 -k 23 -hash DanPle_1.0_23nt.jf >> DanPle_1.0_23nt.log 2>&1 &
cd $HASHDIR/DanPle_1.0/ ; $JELFISH -p 47122 -k 15 -hash DanPle_1.0_15nt.jf >> DanPle_1.0_15nt.log 2>&1 &
cd $HASHDIR/DanPle_1.0/ ; $JELFISH -p 46122 -k 11 -hash DanPle_1.0_11nt.jf >> DanPle_1.0_11nt.log 2>&1 &

cd $HASHDIR/Dappu_V1.0/ ; $JELFISH -p 48123 -k 23 -hash Dappu_V1.0_23nt.jf >> Dappu_V1.0_23nt.log 2>&1 &
cd $HASHDIR/Dappu_V1.0/ ; $JELFISH -p 47123 -k 15 -hash Dappu_V1.0_15nt.jf >> Dappu_V1.0_15nt.log 2>&1 &
cd $HASHDIR/Dappu_V1.0/ ; $JELFISH -p 46123 -k 11 -hash Dappu_V1.0_11nt.jf >> Dappu_V1.0_11nt.log 2>&1 &

cd $HASHDIR/DendPond_1.0/ ; $JELFISH -p 48124 -k 23 -hash DendPond_1.0_23nt.jf >> DendPond_1.0_23nt.log 2>&1 &
cd $HASHDIR/DendPond_1.0/ ; $JELFISH -p 47124 -k 15 -hash DendPond_1.0_15nt.jf >> DendPond_1.0_15nt.log 2>&1 &
cd $HASHDIR/DendPond_1.0/ ; $JELFISH -p 46124 -k 11 -hash DendPond_1.0_11nt.jf >> DendPond_1.0_11nt.log 2>&1 &

cd $HASHDIR/dwil_caf1/ ; $JELFISH -p 48125 -k 23 -hash dwil_caf1_23nt.jf >> dwil_caf1_23nt.log 2>&1 &
cd $HASHDIR/dwil_caf1/ ; $JELFISH -p 47125 -k 15 -hash dwil_caf1_15nt.jf >> dwil_caf1_15nt.log 2>&1 &
cd $HASHDIR/dwil_caf1/ ; $JELFISH -p 46125 -k 11 -hash dwil_caf1_11nt.jf >> dwil_caf1_11nt.log 2>&1 &

cd $HASHDIR/Hmel1/ ; $JELFISH -p 48126 -k 23 -hash Hmel1_23nt.jf >> Hmel1_23nt.log 2>&1 &
cd $HASHDIR/Hmel1/ ; $JELFISH -p 47126 -k 15 -hash Hmel1_15nt.jf >> Hmel1_15nt.log 2>&1 &
cd $HASHDIR/Hmel1/ ; $JELFISH -p 46126 -k 11 -hash Hmel1_11nt.jf >> Hmel1_11nt.log 2>&1 &

cd $HASHDIR/Helro1/ ; $JELFISH -p 48127 -k 23 -hash Helro1_23nt.jf >> Helro1_23nt.log 2>&1 &
cd $HASHDIR/Helro1/ ; $JELFISH -p 47127 -k 15 -hash Helro1_15nt.jf >> Helro1_15nt.log 2>&1 &
cd $HASHDIR/Helro1/ ; $JELFISH -p 46127 -k 11 -hash Helro1_11nt.jf >> Helro1_11nt.log 2>&1 &

cd $HASHDIR/IscaW1/ ; $JELFISH -p 48128 -k 23 -hash IscaW1_23nt.jf >> IscaW1_23nt.log 2>&1 &
cd $HASHDIR/IscaW1/ ; $JELFISH -p 47128 -k 15 -hash IscaW1_15nt.jf >> IscaW1_15nt.log 2>&1 &
cd $HASHDIR/IscaW1/ ; $JELFISH -p 46128 -k 11 -hash IscaW1_11nt.jf >> IscaW1_11nt.log 2>&1 &

cd $HASHDIR/Loa_loa_V3/ ; $JELFISH -p 48129 -k 23 -hash Loa_loa_V3_23nt.jf >> Loa_loa_V3_23nt.log 2>&1 &
cd $HASHDIR/Loa_loa_V3/ ; $JELFISH -p 47129 -k 15 -hash Loa_loa_V3_15nt.jf >> Loa_loa_V3_15nt.log 2>&1 &
cd $HASHDIR/Loa_loa_V3/ ; $JELFISH -p 46129 -k 11 -hash Loa_loa_V3_11nt.jf >> Loa_loa_V3_11nt.log 2>&1 &

cd $HASHDIR/Lotgi1/ ; $JELFISH -p 48130 -k 23 -hash Lotgi1_23nt.jf >> Lotgi1_23nt.log 2>&1 &
cd $HASHDIR/Lotgi1/ ; $JELFISH -p 47130 -k 15 -hash Lotgi1_15nt.jf >> Lotgi1_15nt.log 2>&1 &
cd $HASHDIR/Lotgi1/ ; $JELFISH -p 46130 -k 11 -hash Lotgi1_11nt.jf >> Lotgi1_11nt.log 2>&1 &

cd $HASHDIR/Msca1/ ; $JELFISH -p 48131 -k 23 -hash Msca1_23nt.jf >> Msca1_23nt.log 2>&1 &
cd $HASHDIR/Msca1/ ; $JELFISH -p 47131 -k 15 -hash Msca1_15nt.jf >> Msca1_15nt.log 2>&1 &
cd $HASHDIR/Msca1/ ; $JELFISH -p 46131 -k 11 -hash Msca1_11nt.jf >> Msca1_11nt.log 2>&1 &

cd $HASHDIR/MelCinx1.0/ ; $JELFISH -p 48132 -k 23 -hash MelCinx1.0_23nt.jf >> MelCinx1.0_23nt.log 2>&1 &
cd $HASHDIR/MelCinx1.0/ ; $JELFISH -p 47132 -k 15 -hash MelCinx1.0_15nt.jf >> MelCinx1.0_15nt.log 2>&1 &
cd $HASHDIR/MelCinx1.0/ ; $JELFISH -p 46132 -k 11 -hash MelCinx1.0_11nt.jf >> MelCinx1.0_11nt.log 2>&1 &

cd $HASHDIR/MneLei/ ; $JELFISH -p 48133 -k 23 -hash MneLei_23nt.jf >> MneLei_23nt.log 2>&1 &
cd $HASHDIR/MneLei/ ; $JELFISH -p 47133 -k 15 -hash MneLei_15nt.jf >> MneLei_15nt.log 2>&1 &
cd $HASHDIR/MneLei/ ; $JELFISH -p 46133 -k 11 -hash MneLei_11nt.jf >> MneLei_11nt.log 2>&1 &

cd $HASHDIR/Nvit_2.1/ ; $JELFISH -p 48134 -k 23 -hash Nvit_2.1_23nt.jf >> Nvit_2.1_23nt.log 2>&1 &
cd $HASHDIR/Nvit_2.1/ ; $JELFISH -p 47134 -k 15 -hash Nvit_2.1_15nt.jf >> Nvit_2.1_15nt.log 2>&1 &
cd $HASHDIR/Nvit_2.1/ ; $JELFISH -p 46134 -k 11 -hash Nvit_2.1_11nt.jf >> Nvit_2.1_11nt.log 2>&1 &

cd $HASHDIR/ASM20922v1/ ; $JELFISH -p 48135 -k 23 -hash ASM20922v1_23nt.jf >> ASM20922v1_23nt.log 2>&1 &
cd $HASHDIR/ASM20922v1/ ; $JELFISH -p 47135 -k 15 -hash ASM20922v1_15nt.jf >> ASM20922v1_15nt.log 2>&1 &
cd $HASHDIR/ASM20922v1/ ; $JELFISH -p 46135 -k 11 -hash ASM20922v1_11nt.jf >> ASM20922v1_11nt.log 2>&1 &

cd $HASHDIR/Cameroon_v3/ ; $JELFISH -p 48136 -k 23 -hash Cameroon_v3_23nt.jf >> Cameroon_v3_23nt.log 2>&1 &
cd $HASHDIR/Cameroon_v3/ ; $JELFISH -p 47136 -k 15 -hash Cameroon_v3_15nt.jf >> Cameroon_v3_15nt.log 2>&1 &
cd $HASHDIR/Cameroon_v3/ ; $JELFISH -p 46136 -k 11 -hash Cameroon_v3_11nt.jf >> Cameroon_v3_11nt.log 2>&1 &

cd $HASHDIR/PhumU2/ ; $JELFISH -p 48137 -k 23 -hash PhumU2_23nt.jf >> PhumU2_23nt.log 2>&1 &
cd $HASHDIR/PhumU2/ ; $JELFISH -p 47137 -k 15 -hash PhumU2_15nt.jf >> PhumU2_15nt.log 2>&1 &
cd $HASHDIR/PhumU2/ ; $JELFISH -p 46137 -k 11 -hash PhumU2_11nt.jf >> PhumU2_11nt.log 2>&1 &

cd $HASHDIR/RproC1/ ; $JELFISH -p 48138 -k 23 -hash RproC1_23nt.jf >> RproC1_23nt.log 2>&1 &
cd $HASHDIR/RproC1/ ; $JELFISH -p 47138 -k 15 -hash RproC1_15nt.jf >> RproC1_15nt.log 2>&1 &
cd $HASHDIR/RproC1/ ; $JELFISH -p 46138 -k 11 -hash RproC1_11nt.jf >> RproC1_11nt.log 2>&1 &

cd $HASHDIR/ASM23792v2/ ; $JELFISH -p 48139 -k 23 -hash ASM23792v2_23nt.jf >> ASM23792v2_23nt.log 2>&1 &
cd $HASHDIR/ASM23792v2/ ; $JELFISH -p 47139 -k 15 -hash ASM23792v2_15nt.jf >> ASM23792v2_15nt.log 2>&1 &
cd $HASHDIR/ASM23792v2/ ; $JELFISH -p 46139 -k 11 -hash ASM23792v2_11nt.jf >> ASM23792v2_11nt.log 2>&1 &

cd $HASHDIR/Si_gnG/ ; $JELFISH -p 48140 -k 23 -hash Si_gnG_23nt.jf >> Si_gnG_23nt.log 2>&1 &
cd $HASHDIR/Si_gnG/ ; $JELFISH -p 47140 -k 15 -hash Si_gnG_15nt.jf >> Si_gnG_15nt.log 2>&1 &
cd $HASHDIR/Si_gnG/ ; $JELFISH -p 46140 -k 11 -hash Si_gnG_11nt.jf >> Si_gnG_11nt.log 2>&1 &

cd $HASHDIR/Smar1/ ; $JELFISH -p 48141 -k 23 -hash Smar1_23nt.jf >> Smar1_23nt.log 2>&1 &
cd $HASHDIR/Smar1/ ; $JELFISH -p 47141 -k 15 -hash Smar1_15nt.jf >> Smar1_15nt.log 2>&1 &
cd $HASHDIR/Smar1/ ; $JELFISH -p 46141 -k 11 -hash Smar1_11nt.jf >> Smar1_11nt.log 2>&1 &

cd $HASHDIR/ASM23943v1/ ; $JELFISH -p 48142 -k 23 -hash ASM23943v1_23nt.jf >> ASM23943v1_23nt.log 2>&1 &
cd $HASHDIR/ASM23943v1/ ; $JELFISH -p 47142 -k 15 -hash ASM23943v1_15nt.jf >> ASM23943v1_15nt.log 2>&1 &
cd $HASHDIR/ASM23943v1/ ; $JELFISH -p 46142 -k 11 -hash ASM23943v1_11nt.jf >> ASM23943v1_11nt.log 2>&1 &

cd $HASHDIR/Tcas3/ ; $JELFISH -p 48143 -k 23 -hash Tcas3_23nt.jf >> Tcas3_23nt.log 2>&1 &
cd $HASHDIR/Tcas3/ ; $JELFISH -p 47143 -k 15 -hash Tcas3_15nt.jf >> Tcas3_15nt.log 2>&1 &
cd $HASHDIR/Tcas3/ ; $JELFISH -p 46143 -k 11 -hash Tcas3_11nt.jf >> Tcas3_11nt.log 2>&1 &

cd $HASHDIR/Tspiralis1/ ; $JELFISH -p 48144 -k 23 -hash Tspiralis1_23nt.jf >> Tspiralis1_23nt.log 2>&1 &
cd $HASHDIR/Tspiralis1/ ; $JELFISH -p 47144 -k 15 -hash Tspiralis1_15nt.jf >> Tspiralis1_15nt.log 2>&1 &
cd $HASHDIR/Tspiralis1/ ; $JELFISH -p 46144 -k 11 -hash Tspiralis1_11nt.jf >> Tspiralis1_11nt.log 2>&1 &

cd $HASHDIR/ASM15027v1/ ; $JELFISH -p 48145 -k 23 -hash ASM15027v1_23nt.jf >> ASM15027v1_23nt.log 2>&1 &
cd $HASHDIR/ASM15027v1/ ; $JELFISH -p 47145 -k 15 -hash ASM15027v1_15nt.jf >> ASM15027v1_15nt.log 2>&1 &
cd $HASHDIR/ASM15027v1/ ; $JELFISH -p 46145 -k 11 -hash ASM15027v1_11nt.jf >> ASM15027v1_11nt.log 2>&1 &

cd $HASHDIR/ZooNev1.0/ ; $JELFISH -p 48146 -k 23 -hash ZooNev1.0_23nt.jf >> ZooNev1.0_23nt.log 2>&1 &
cd $HASHDIR/ZooNev1.0/ ; $JELFISH -p 47146 -k 15 -hash ZooNev1.0_15nt.jf >> ZooNev1.0_15nt.log 2>&1 &
cd $HASHDIR/ZooNev1.0/ ; $JELFISH -p 46146 -k 11 -hash ZooNev1.0_11nt.jf >> ZooNev1.0_11nt.log 2>&1 &

cd $HASHDIR/ASM34733v1/ ; $JELFISH -p 48147 -k 23 -hash ASM34733v1_23nt.jf >> ASM34733v1_23nt.log 2>&1 &
cd $HASHDIR/ASM34733v1/ ; $JELFISH -p 47147 -k 15 -hash ASM34733v1_15nt.jf >> ASM34733v1_15nt.log 2>&1 &
cd $HASHDIR/ASM34733v1/ ; $JELFISH -p 46147 -k 11 -hash ASM34733v1_11nt.jf >> ASM34733v1_11nt.log 2>&1 &

cd $HASHDIR/AMTR1.0/ ; $JELFISH -p 48148 -k 23 -hash AMTR1.0_23nt.jf >> AMTR1.0_23nt.log 2>&1 &
cd $HASHDIR/AMTR1.0/ ; $JELFISH -p 47148 -k 15 -hash AMTR1.0_15nt.jf >> AMTR1.0_15nt.log 2>&1 &
cd $HASHDIR/AMTR1.0/ ; $JELFISH -p 46148 -k 11 -hash AMTR1.0_11nt.jf >> AMTR1.0_11nt.log 2>&1 &

cd $HASHDIR/Araly_v.1.0/ ; $JELFISH -p 48149 -k 23 -hash Araly_v.1.0_23nt.jf >> Araly_v.1.0_23nt.log 2>&1 &
cd $HASHDIR/Araly_v.1.0/ ; $JELFISH -p 47149 -k 15 -hash Araly_v.1.0_15nt.jf >> Araly_v.1.0_15nt.log 2>&1 &
cd $HASHDIR/Araly_v.1.0/ ; $JELFISH -p 46149 -k 11 -hash Araly_v.1.0_11nt.jf >> Araly_v.1.0_11nt.log 2>&1 &

cd $HASHDIR/TAIR10_en/ ; $JELFISH -p 48150 -k 23 -hash TAIR10_en_23nt.jf >> TAIR10_en_23nt.log 2>&1 &
cd $HASHDIR/TAIR10_en/ ; $JELFISH -p 47150 -k 15 -hash TAIR10_en_15nt.jf >> TAIR10_en_15nt.log 2>&1 &
cd $HASHDIR/TAIR10_en/ ; $JELFISH -p 46150 -k 11 -hash TAIR10_en_11nt.jf >> TAIR10_en_11nt.log 2>&1 &

cd $HASHDIR/Bradi_v1.0/ ; $JELFISH -p 48151 -k 23 -hash Bradi_v1.0_23nt.jf >> Bradi_v1.0_23nt.log 2>&1 &
cd $HASHDIR/Bradi_v1.0/ ; $JELFISH -p 47151 -k 15 -hash Bradi_v1.0_15nt.jf >> Bradi_v1.0_15nt.log 2>&1 &
cd $HASHDIR/Bradi_v1.0/ ; $JELFISH -p 46151 -k 11 -hash Bradi_v1.0_11nt.jf >> Bradi_v1.0_11nt.log 2>&1 &

cd $HASHDIR/Braol_v2.1/ ; $JELFISH -p 48152 -k 23 -hash Braol_v2.1_23nt.jf >> Braol_v2.1_23nt.log 2>&1 &
cd $HASHDIR/Braol_v2.1/ ; $JELFISH -p 47152 -k 15 -hash Braol_v2.1_15nt.jf >> Braol_v2.1_15nt.log 2>&1 &
cd $HASHDIR/Braol_v2.1/ ; $JELFISH -p 46152 -k 11 -hash Braol_v2.1_11nt.jf >> Braol_v2.1_11nt.log 2>&1 &

cd $HASHDIR/IVFCAASv1/ ; $JELFISH -p 48153 -k 23 -hash IVFCAASv1_23nt.jf >> IVFCAASv1_23nt.log 2>&1 &
cd $HASHDIR/IVFCAASv1/ ; $JELFISH -p 47153 -k 15 -hash IVFCAASv1_15nt.jf >> IVFCAASv1_15nt.log 2>&1 &
cd $HASHDIR/IVFCAASv1/ ; $JELFISH -p 46153 -k 11 -hash IVFCAASv1_11nt.jf >> IVFCAASv1_11nt.log 2>&1 &

cd $HASHDIR/Chlre_v3.1/ ; $JELFISH -p 48154 -k 23 -hash Chlre_v3.1_23nt.jf >> Chlre_v3.1_23nt.log 2>&1 &
cd $HASHDIR/Chlre_v3.1/ ; $JELFISH -p 47154 -k 15 -hash Chlre_v3.1_15nt.jf >> Chlre_v3.1_15nt.log 2>&1 &
cd $HASHDIR/Chlre_v3.1/ ; $JELFISH -p 46154 -k 11 -hash Chlre_v3.1_11nt.jf >> Chlre_v3.1_11nt.log 2>&1 &

cd $HASHDIR/ASM9120v1/ ; $JELFISH -p 48155 -k 23 -hash ASM9120v1_23nt.jf >> ASM9120v1_23nt.log 2>&1 &
cd $HASHDIR/ASM9120v1/ ; $JELFISH -p 47155 -k 15 -hash ASM9120v1_15nt.jf >> ASM9120v1_15nt.log 2>&1 &
cd $HASHDIR/ASM9120v1/ ; $JELFISH -p 46155 -k 11 -hash ASM9120v1_11nt.jf >> ASM9120v1_11nt.log 2>&1 &

cd $HASHDIR/Soybn_V1.0/ ; $JELFISH -p 48156 -k 23 -hash Soybn_V1.0_23nt.jf >> Soybn_V1.0_23nt.log 2>&1 &
cd $HASHDIR/Soybn_V1.0/ ; $JELFISH -p 47156 -k 15 -hash Soybn_V1.0_15nt.jf >> Soybn_V1.0_15nt.log 2>&1 &
cd $HASHDIR/Soybn_V1.0/ ; $JELFISH -p 46156 -k 11 -hash Soybn_V1.0_11nt.jf >> Soybn_V1.0_11nt.log 2>&1 &

cd $HASHDIR/Horvu_v1/ ; $JELFISH -p 48157 -k 23 -hash Horvu_v1_23nt.jf >> Horvu_v1_23nt.log 2>&1 &
cd $HASHDIR/Horvu_v1/ ; $JELFISH -p 47157 -k 15 -hash Horvu_v1_15nt.jf >> Horvu_v1_15nt.log 2>&1 &
cd $HASHDIR/Horvu_v1/ ; $JELFISH -p 46157 -k 11 -hash Horvu_v1_11nt.jf >> Horvu_v1_11nt.log 2>&1 &

cd $HASHDIR/Lperr_V1.4/ ; $JELFISH -p 48158 -k 23 -hash Lperr_V1.4_23nt.jf >> Lperr_V1.4_23nt.log 2>&1 &
cd $HASHDIR/Lperr_V1.4/ ; $JELFISH -p 47158 -k 15 -hash Lperr_V1.4_15nt.jf >> Lperr_V1.4_15nt.log 2>&1 &
cd $HASHDIR/Lperr_V1.4/ ; $JELFISH -p 46158 -k 11 -hash Lperr_V1.4_11nt.jf >> Lperr_V1.4_11nt.log 2>&1 &

cd $HASHDIR/MedtrA17_4.0/ ; $JELFISH -p 48159 -k 23 -hash MedtrA17_4.0_23nt.jf >> MedtrA17_4.0_23nt.log 2>&1 &
cd $HASHDIR/MedtrA17_4.0/ ; $JELFISH -p 47159 -k 15 -hash MedtrA17_4.0_15nt.jf >> MedtrA17_4.0_15nt.log 2>&1 &
cd $HASHDIR/MedtrA17_4.0/ ; $JELFISH -p 46159 -k 11 -hash MedtrA17_4.0_11nt.jf >> MedtrA17_4.0_11nt.log 2>&1 &

cd $HASHDIR/MA1/ ; $JELFISH -p 48160 -k 23 -hash MA1_23nt.jf >> MA1_23nt.log 2>&1 &
cd $HASHDIR/MA1/ ; $JELFISH -p 47160 -k 15 -hash MA1_15nt.jf >> MA1_15nt.log 2>&1 &
cd $HASHDIR/MA1/ ; $JELFISH -p 46160 -k 11 -hash MA1_11nt.jf >> MA1_11nt.log 2>&1 &

cd $HASHDIR/Obart_v1.0/ ; $JELFISH -p 48161 -k 23 -hash Obart_v1.0_23nt.jf >> Obart_v1.0_23nt.log 2>&1 &
cd $HASHDIR/Obart_v1.0/ ; $JELFISH -p 47161 -k 15 -hash Obart_v1.0_15nt.jf >> Obart_v1.0_15nt.log 2>&1 &
cd $HASHDIR/Obart_v1.0/ ; $JELFISH -p 46161 -k 11 -hash Obart_v1.0_11nt.jf >> Obart_v1.0_11nt.log 2>&1 &

cd $HASHDIR/Orybr_v1.4b/ ; $JELFISH -p 48162 -k 23 -hash Orybr_v1.4b_23nt.jf >> Orybr_v1.4b_23nt.log 2>&1 &
cd $HASHDIR/Orybr_v1.4b/ ; $JELFISH -p 47162 -k 15 -hash Orybr_v1.4b_15nt.jf >> Orybr_v1.4b_15nt.log 2>&1 &
cd $HASHDIR/Orybr_v1.4b/ ; $JELFISH -p 46162 -k 11 -hash Orybr_v1.4b_11nt.jf >> Orybr_v1.4b_11nt.log 2>&1 &

cd $HASHDIR/AGI1.1/ ; $JELFISH -p 48163 -k 23 -hash AGI1.1_23nt.jf >> AGI1.1_23nt.log 2>&1 &
cd $HASHDIR/AGI1.1/ ; $JELFISH -p 47163 -k 15 -hash AGI1.1_15nt.jf >> AGI1.1_15nt.log 2>&1 &
cd $HASHDIR/AGI1.1/ ; $JELFISH -p 46163 -k 11 -hash AGI1.1_11nt.jf >> AGI1.1_11nt.log 2>&1 &

cd $HASHDIR/Orygl/ ; $JELFISH -p 48164 -k 23 -hash Orygl_23nt.jf >> Orygl_23nt.log 2>&1 &
cd $HASHDIR/Orygl/ ; $JELFISH -p 47164 -k 15 -hash Orygl_15nt.jf >> Orygl_15nt.log 2>&1 &
cd $HASHDIR/Orygl/ ; $JELFISH -p 46164 -k 11 -hash Orygl_11nt.jf >> Orygl_11nt.log 2>&1 &

cd $HASHDIR/Orylo_v0117/ ; $JELFISH -p 48165 -k 23 -hash Orylo_v0117_23nt.jf >> Orylo_v0117_23nt.log 2>&1 &
cd $HASHDIR/Orylo_v0117/ ; $JELFISH -p 47165 -k 15 -hash Orylo_v0117_15nt.jf >> Orylo_v0117_15nt.log 2>&1 &
cd $HASHDIR/Orylo_v0117/ ; $JELFISH -p 46165 -k 11 -hash Orylo_v0117_11nt.jf >> Orylo_v0117_11nt.log 2>&1 &

cd $HASHDIR/Oryme_v1.3/ ; $JELFISH -p 48166 -k 23 -hash Oryme_v1.3_23nt.jf >> Oryme_v1.3_23nt.log 2>&1 &
cd $HASHDIR/Oryme_v1.3/ ; $JELFISH -p 47166 -k 15 -hash Oryme_v1.3_15nt.jf >> Oryme_v1.3_15nt.log 2>&1 &
cd $HASHDIR/Oryme_v1.3/ ; $JELFISH -p 46166 -k 11 -hash Oryme_v1.3_11nt.jf >> Oryme_v1.3_11nt.log 2>&1 &

cd $HASHDIR/Oryni/ ; $JELFISH -p 48167 -k 23 -hash Oryni_23nt.jf >> Oryni_23nt.log 2>&1 &
cd $HASHDIR/Oryni/ ; $JELFISH -p 47167 -k 15 -hash Oryni_15nt.jf >> Oryni_15nt.log 2>&1 &
cd $HASHDIR/Oryni/ ; $JELFISH -p 46167 -k 11 -hash Oryni_11nt.jf >> Oryni_11nt.log 2>&1 &

cd $HASHDIR/Orypu/ ; $JELFISH -p 48168 -k 23 -hash Orypu_23nt.jf >> Orypu_23nt.log 2>&1 &
cd $HASHDIR/Orypu/ ; $JELFISH -p 47168 -k 15 -hash Orypu_15nt.jf >> Orypu_15nt.log 2>&1 &
cd $HASHDIR/Orypu/ ; $JELFISH -p 46168 -k 11 -hash Orypu_11nt.jf >> Orypu_11nt.log 2>&1 &

cd $HASHDIR/PRJEB4137/ ; $JELFISH -p 48169 -k 23 -hash PRJEB4137_23nt.jf >> PRJEB4137_23nt.log 2>&1 &
cd $HASHDIR/PRJEB4137/ ; $JELFISH -p 47169 -k 15 -hash PRJEB4137_15nt.jf >> PRJEB4137_15nt.log 2>&1 &
cd $HASHDIR/PRJEB4137/ ; $JELFISH -p 46169 -k 11 -hash PRJEB4137_11nt.jf >> PRJEB4137_11nt.log 2>&1 &

cd $HASHDIR/ASM465v1/ ; $JELFISH -p 48170 -k 23 -hash ASM465v1_23nt.jf >> ASM465v1_23nt.log 2>&1 &
cd $HASHDIR/ASM465v1/ ; $JELFISH -p 47170 -k 15 -hash ASM465v1_15nt.jf >> ASM465v1_15nt.log 2>&1 &
cd $HASHDIR/ASM465v1/ ; $JELFISH -p 46170 -k 11 -hash ASM465v1_11nt.jf >> ASM465v1_11nt.log 2>&1 &

cd $HASHDIR/ASM9206v1/ ; $JELFISH -p 48171 -k 23 -hash ASM9206v1_23nt.jf >> ASM9206v1_23nt.log 2>&1 &
cd $HASHDIR/ASM9206v1/ ; $JELFISH -p 47171 -k 15 -hash ASM9206v1_15nt.jf >> ASM9206v1_15nt.log 2>&1 &
cd $HASHDIR/ASM9206v1/ ; $JELFISH -p 46171 -k 11 -hash ASM9206v1_11nt.jf >> ASM9206v1_11nt.log 2>&1 &

cd $HASHDIR/ASM242v1/ ; $JELFISH -p 48172 -k 23 -hash ASM242v1_23nt.jf >> ASM242v1_23nt.log 2>&1 &
cd $HASHDIR/ASM242v1/ ; $JELFISH -p 47172 -k 15 -hash ASM242v1_15nt.jf >> ASM242v1_15nt.log 2>&1 &
cd $HASHDIR/ASM242v1/ ; $JELFISH -p 46172 -k 11 -hash ASM242v1_11nt.jf >> ASM242v1_11nt.log 2>&1 &

cd $HASHDIR/Poptr_JGI2.0/ ; $JELFISH -p 48173 -k 23 -hash Poptr_JGI2.0_23nt.jf >> Poptr_JGI2.0_23nt.log 2>&1 &
cd $HASHDIR/Poptr_JGI2.0/ ; $JELFISH -p 47173 -k 15 -hash Poptr_JGI2.0_15nt.jf >> Poptr_JGI2.0_15nt.log 2>&1 &
cd $HASHDIR/Poptr_JGI2.0/ ; $JELFISH -p 46173 -k 11 -hash Poptr_JGI2.0_11nt.jf >> Poptr_JGI2.0_11nt.log 2>&1 &

cd $HASHDIR/Prupe1_0/ ; $JELFISH -p 48174 -k 23 -hash Prupe1_0_23nt.jf >> Prupe1_0_23nt.log 2>&1 &
cd $HASHDIR/Prupe1_0/ ; $JELFISH -p 47174 -k 15 -hash Prupe1_0_15nt.jf >> Prupe1_0_15nt.log 2>&1 &
cd $HASHDIR/Prupe1_0/ ; $JELFISH -p 46174 -k 11 -hash Prupe1_0_11nt.jf >> Prupe1_0_11nt.log 2>&1 &

cd $HASHDIR/Selml_v1.0/ ; $JELFISH -p 48175 -k 23 -hash Selml_v1.0_23nt.jf >> Selml_v1.0_23nt.log 2>&1 &
cd $HASHDIR/Selml_v1.0/ ; $JELFISH -p 47175 -k 15 -hash Selml_v1.0_15nt.jf >> Selml_v1.0_15nt.log 2>&1 &
cd $HASHDIR/Selml_v1.0/ ; $JELFISH -p 46175 -k 11 -hash Selml_v1.0_11nt.jf >> Selml_v1.0_11nt.log 2>&1 &

cd $HASHDIR/Setit_JGIv2.0/ ; $JELFISH -p 48176 -k 23 -hash Setit_JGIv2.0_23nt.jf >> Setit_JGIv2.0_23nt.log 2>&1 &
cd $HASHDIR/Setit_JGIv2.0/ ; $JELFISH -p 47176 -k 15 -hash Setit_JGIv2.0_15nt.jf >> Setit_JGIv2.0_15nt.log 2>&1 &
cd $HASHDIR/Setit_JGIv2.0/ ; $JELFISH -p 46176 -k 11 -hash Setit_JGIv2.0_11nt.jf >> Setit_JGIv2.0_11nt.log 2>&1 &

cd $HASHDIR/SL2.50/ ; $JELFISH -p 48177 -k 23 -hash SL2.50_23nt.jf >> SL2.50_23nt.log 2>&1 &
cd $HASHDIR/SL2.50/ ; $JELFISH -p 47177 -k 15 -hash SL2.50_15nt.jf >> SL2.50_15nt.log 2>&1 &
cd $HASHDIR/SL2.50/ ; $JELFISH -p 46177 -k 11 -hash SL2.50_11nt.jf >> SL2.50_11nt.log 2>&1 &

cd $HASHDIR/SolTub_3.0/ ; $JELFISH -p 48178 -k 23 -hash SolTub_3.0_23nt.jf >> SolTub_3.0_23nt.log 2>&1 &
cd $HASHDIR/SolTub_3.0/ ; $JELFISH -p 47178 -k 15 -hash SolTub_3.0_15nt.jf >> SolTub_3.0_15nt.log 2>&1 &
cd $HASHDIR/SolTub_3.0/ ; $JELFISH -p 46178 -k 11 -hash SolTub_3.0_11nt.jf >> SolTub_3.0_11nt.log 2>&1 &

cd $HASHDIR/Sorbi1/ ; $JELFISH -p 48179 -k 23 -hash Sorbi1_23nt.jf >> Sorbi1_23nt.log 2>&1 &
cd $HASHDIR/Sorbi1/ ; $JELFISH -p 47179 -k 15 -hash Sorbi1_15nt.jf >> Sorbi1_15nt.log 2>&1 &
cd $HASHDIR/Sorbi1/ ; $JELFISH -p 46179 -k 11 -hash Sorbi1_11nt.jf >> Sorbi1_11nt.log 2>&1 &

cd $HASHDIR/Thecc_20110822/ ; $JELFISH -p 48180 -k 23 -hash Thecc_20110822_23nt.jf >> Thecc_20110822_23nt.log 2>&1 &
cd $HASHDIR/Thecc_20110822/ ; $JELFISH -p 47180 -k 15 -hash Thecc_20110822_15nt.jf >> Thecc_20110822_15nt.log 2>&1 &
cd $HASHDIR/Thecc_20110822/ ; $JELFISH -p 46180 -k 11 -hash Thecc_20110822_11nt.jf >> Thecc_20110822_11nt.log 2>&1 &

cd $HASHDIR/IWGSC1.0/ ; $JELFISH -p 48181 -k 23 -hash IWGSC1.0_23nt.jf >> IWGSC1.0_23nt.log 2>&1 &
cd $HASHDIR/IWGSC1.0/ ; $JELFISH -p 47181 -k 15 -hash IWGSC1.0_15nt.jf >> IWGSC1.0_15nt.log 2>&1 &
cd $HASHDIR/IWGSC1.0/ ; $JELFISH -p 46181 -k 11 -hash IWGSC1.0_11nt.jf >> IWGSC1.0_11nt.log 2>&1 &

cd $HASHDIR/ASM34745v1/ ; $JELFISH -p 48182 -k 23 -hash ASM34745v1_23nt.jf >> ASM34745v1_23nt.log 2>&1 &
cd $HASHDIR/ASM34745v1/ ; $JELFISH -p 47182 -k 15 -hash ASM34745v1_15nt.jf >> ASM34745v1_15nt.log 2>&1 &
cd $HASHDIR/ASM34745v1/ ; $JELFISH -p 46182 -k 11 -hash ASM34745v1_11nt.jf >> ASM34745v1_11nt.log 2>&1 &

cd $HASHDIR/IGGP_12x/ ; $JELFISH -p 48183 -k 23 -hash IGGP_12x_23nt.jf >> IGGP_12x_23nt.log 2>&1 &
cd $HASHDIR/IGGP_12x/ ; $JELFISH -p 47183 -k 15 -hash IGGP_12x_15nt.jf >> IGGP_12x_15nt.log 2>&1 &
cd $HASHDIR/IGGP_12x/ ; $JELFISH -p 46183 -k 11 -hash IGGP_12x_11nt.jf >> IGGP_12x_11nt.log 2>&1 &

cd $HASHDIR/AGPv3/ ; $JELFISH -p 48184 -k 23 -hash AGPv3_23nt.jf >> AGPv3_23nt.log 2>&1 &
cd $HASHDIR/AGPv3/ ; $JELFISH -p 47184 -k 15 -hash AGPv3_15nt.jf >> AGPv3_15nt.log 2>&1 &
cd $HASHDIR/AGPv3/ ; $JELFISH -p 46184 -k 11 -hash AGPv3_11nt.jf >> AGPv3_11nt.log 2>&1 &

cd $HASHDIR/Ppatens_251_v3/ ; $JELFISH -p 48185 -k 23 -hash Ppatens_251_v3_23nt.jf >> Ppatens_251_v3_23nt.log 2>&1 &
cd $HASHDIR/Ppatens_251_v3/ ; $JELFISH -p 47185 -k 15 -hash Ppatens_251_v3_15nt.jf >> Ppatens_251_v3_15nt.log 2>&1 &
cd $HASHDIR/Ppatens_251_v3/ ; $JELFISH -p 46185 -k 11 -hash Ppatens_251_v3_11nt.jf >> Ppatens_251_v3_11nt.log 2>&1 &

cd $HASHDIR/Smoellendorffii_91_v1/ ; $JELFISH -p 48186 -k 23 -hash Smoellendorffii_91_v1_23nt.jf >> Smoellendorffii_91_v1_23nt.log 2>&1 &
cd $HASHDIR/Smoellendorffii_91_v1/ ; $JELFISH -p 47186 -k 15 -hash Smoellendorffii_91_v1_15nt.jf >> Smoellendorffii_91_v1_15nt.log 2>&1 &
cd $HASHDIR/Smoellendorffii_91_v1/ ; $JELFISH -p 46186 -k 11 -hash Smoellendorffii_91_v1_11nt.jf >> Smoellendorffii_91_v1_11nt.log 2>&1 &

cd $HASHDIR/Creinhardtii_281_v5_5/ ; $JELFISH -p 48187 -k 23 -hash Creinhardtii_281_v5_5_23nt.jf >> Creinhardtii_281_v5_5_23nt.log 2>&1 &
cd $HASHDIR/Creinhardtii_281_v5_5/ ; $JELFISH -p 47187 -k 15 -hash Creinhardtii_281_v5_5_15nt.jf >> Creinhardtii_281_v5_5_15nt.log 2>&1 &
cd $HASHDIR/Creinhardtii_281_v5_5/ ; $JELFISH -p 46187 -k 11 -hash Creinhardtii_281_v5_5_11nt.jf >> Creinhardtii_281_v5_5_11nt.log 2>&1 &

cd $HASHDIR/Olucimarinus_231_v2/ ; $JELFISH -p 48188 -k 23 -hash Olucimarinus_231_v2_23nt.jf >> Olucimarinus_231_v2_23nt.log 2>&1 &
cd $HASHDIR/Olucimarinus_231_v2/ ; $JELFISH -p 47188 -k 15 -hash Olucimarinus_231_v2_15nt.jf >> Olucimarinus_231_v2_15nt.log 2>&1 &
cd $HASHDIR/Olucimarinus_231_v2/ ; $JELFISH -p 46188 -k 11 -hash Olucimarinus_231_v2_11nt.jf >> Olucimarinus_231_v2_11nt.log 2>&1 &

cd $HASHDIR/Cgrandiflora_v1/ ; $JELFISH -p 48189 -k 23 -hash Cgrandiflora_v1_23nt.jf >> Cgrandiflora_v1_23nt.log 2>&1 &
cd $HASHDIR/Cgrandiflora_v1/ ; $JELFISH -p 47189 -k 15 -hash Cgrandiflora_v1_15nt.jf >> Cgrandiflora_v1_15nt.log 2>&1 &
cd $HASHDIR/Cgrandiflora_v1/ ; $JELFISH -p 46189 -k 11 -hash Cgrandiflora_v1_11nt.jf >> Cgrandiflora_v1_11nt.log 2>&1 &

cd $HASHDIR/Crubella_v1/ ; $JELFISH -p 48190 -k 23 -hash Crubella_v1_23nt.jf >> Crubella_v1_23nt.log 2>&1 &
cd $HASHDIR/Crubella_v1/ ; $JELFISH -p 47190 -k 15 -hash Crubella_v1_15nt.jf >> Crubella_v1_15nt.log 2>&1 &
cd $HASHDIR/Crubella_v1/ ; $JELFISH -p 46190 -k 11 -hash Crubella_v1_11nt.jf >> Crubella_v1_11nt.log 2>&1 &

cd $HASHDIR/Cpapaya_r.Dec2008/ ; $JELFISH -p 48191 -k 23 -hash Cpapaya_r.Dec2008_23nt.jf >> Cpapaya_r.Dec2008_23nt.log 2>&1 &
cd $HASHDIR/Cpapaya_r.Dec2008/ ; $JELFISH -p 47191 -k 15 -hash Cpapaya_r.Dec2008_15nt.jf >> Cpapaya_r.Dec2008_15nt.log 2>&1 &
cd $HASHDIR/Cpapaya_r.Dec2008/ ; $JELFISH -p 46191 -k 11 -hash Cpapaya_r.Dec2008_11nt.jf >> Cpapaya_r.Dec2008_11nt.log 2>&1 &

cd $HASHDIR/CsubellipsoideaC169_v2.0/ ; $JELFISH -p 48192 -k 23 -hash CsubellipsoideaC169_v2.0_23nt.jf >> CsubellipsoideaC169_v2.0_23nt.log 2>&1 &
cd $HASHDIR/CsubellipsoideaC169_v2.0/ ; $JELFISH -p 47192 -k 15 -hash CsubellipsoideaC169_v2.0_15nt.jf >> CsubellipsoideaC169_v2.0_15nt.log 2>&1 &
cd $HASHDIR/CsubellipsoideaC169_v2.0/ ; $JELFISH -p 46192 -k 11 -hash CsubellipsoideaC169_v2.0_11nt.jf >> CsubellipsoideaC169_v2.0_11nt.log 2>&1 &

cd $HASHDIR/Csativus_v1/ ; $JELFISH -p 48193 -k 23 -hash Csativus_v1_23nt.jf >> Csativus_v1_23nt.log 2>&1 &
cd $HASHDIR/Csativus_v1/ ; $JELFISH -p 47193 -k 15 -hash Csativus_v1_15nt.jf >> Csativus_v1_15nt.log 2>&1 &
cd $HASHDIR/Csativus_v1/ ; $JELFISH -p 46193 -k 11 -hash Csativus_v1_11nt.jf >> Csativus_v1_11nt.log 2>&1 &

cd $HASHDIR/Egrandis_v2.0/ ; $JELFISH -p 48194 -k 23 -hash Egrandis_v2.0_23nt.jf >> Egrandis_v2.0_23nt.log 2>&1 &
cd $HASHDIR/Egrandis_v2.0/ ; $JELFISH -p 47194 -k 15 -hash Egrandis_v2.0_15nt.jf >> Egrandis_v2.0_15nt.log 2>&1 &
cd $HASHDIR/Egrandis_v2.0/ ; $JELFISH -p 46194 -k 11 -hash Egrandis_v2.0_11nt.jf >> Egrandis_v2.0_11nt.log 2>&1 &

cd $HASHDIR/Fvesca_v1.1/ ; $JELFISH -p 48195 -k 23 -hash Fvesca_v1.1_23nt.jf >> Fvesca_v1.1_23nt.log 2>&1 &
cd $HASHDIR/Fvesca_v1.1/ ; $JELFISH -p 47195 -k 15 -hash Fvesca_v1.1_15nt.jf >> Fvesca_v1.1_15nt.log 2>&1 &
cd $HASHDIR/Fvesca_v1.1/ ; $JELFISH -p 46195 -k 11 -hash Fvesca_v1.1_11nt.jf >> Fvesca_v1.1_11nt.log 2>&1 &

cd $HASHDIR/Graimondii_v2.0/ ; $JELFISH -p 48196 -k 23 -hash Graimondii_v2.0_23nt.jf >> Graimondii_v2.0_23nt.log 2>&1 &
cd $HASHDIR/Graimondii_v2.0/ ; $JELFISH -p 47196 -k 15 -hash Graimondii_v2.0_15nt.jf >> Graimondii_v2.0_15nt.log 2>&1 &
cd $HASHDIR/Graimondii_v2.0/ ; $JELFISH -p 46196 -k 11 -hash Graimondii_v2.0_11nt.jf >> Graimondii_v2.0_11nt.log 2>&1 &

cd $HASHDIR/Lusitatissimum_BGIv1.0/ ; $JELFISH -p 48197 -k 23 -hash Lusitatissimum_BGIv1.0_23nt.jf >> Lusitatissimum_BGIv1.0_23nt.log 2>&1 &
cd $HASHDIR/Lusitatissimum_BGIv1.0/ ; $JELFISH -p 47197 -k 15 -hash Lusitatissimum_BGIv1.0_15nt.jf >> Lusitatissimum_BGIv1.0_15nt.log 2>&1 &
cd $HASHDIR/Lusitatissimum_BGIv1.0/ ; $JELFISH -p 46197 -k 11 -hash Lusitatissimum_BGIv1.0_11nt.jf >> Lusitatissimum_BGIv1.0_11nt.log 2>&1 &

cd $HASHDIR/Mdomestica_v1.0/ ; $JELFISH -p 48198 -k 23 -hash Mdomestica_v1.0_23nt.jf >> Mdomestica_v1.0_23nt.log 2>&1 &
cd $HASHDIR/Mdomestica_v1.0/ ; $JELFISH -p 47198 -k 15 -hash Mdomestica_v1.0_15nt.jf >> Mdomestica_v1.0_15nt.log 2>&1 &
cd $HASHDIR/Mdomestica_v1.0/ ; $JELFISH -p 46198 -k 11 -hash Mdomestica_v1.0_11nt.jf >> Mdomestica_v1.0_11nt.log 2>&1 &

cd $HASHDIR/Mesculenta_v6/ ; $JELFISH -p 48199 -k 23 -hash Mesculenta_v6_23nt.jf >> Mesculenta_v6_23nt.log 2>&1 &
cd $HASHDIR/Mesculenta_v6/ ; $JELFISH -p 47199 -k 15 -hash Mesculenta_v6_15nt.jf >> Mesculenta_v6_15nt.log 2>&1 &
cd $HASHDIR/Mesculenta_v6/ ; $JELFISH -p 46199 -k 11 -hash Mesculenta_v6_11nt.jf >> Mesculenta_v6_11nt.log 2>&1 &

cd $HASHDIR/MpusillaCCMP1545_v3.0/ ; $JELFISH -p 48200 -k 23 -hash MpusillaCCMP1545_v3.0_23nt.jf >> MpusillaCCMP1545_v3.0_23nt.log 2>&1 &
cd $HASHDIR/MpusillaCCMP1545_v3.0/ ; $JELFISH -p 47200 -k 15 -hash MpusillaCCMP1545_v3.0_15nt.jf >> MpusillaCCMP1545_v3.0_15nt.log 2>&1 &
cd $HASHDIR/MpusillaCCMP1545_v3.0/ ; $JELFISH -p 46200 -k 11 -hash MpusillaCCMP1545_v3.0_11nt.jf >> MpusillaCCMP1545_v3.0_11nt.log 2>&1 &

cd $HASHDIR/MpusillaRCC299_v3.0/ ; $JELFISH -p 48201 -k 23 -hash MpusillaRCC299_v3.0_23nt.jf >> MpusillaRCC299_v3.0_23nt.log 2>&1 &
cd $HASHDIR/MpusillaRCC299_v3.0/ ; $JELFISH -p 47201 -k 15 -hash MpusillaRCC299_v3.0_15nt.jf >> MpusillaRCC299_v3.0_15nt.log 2>&1 &
cd $HASHDIR/MpusillaRCC299_v3.0/ ; $JELFISH -p 46201 -k 11 -hash MpusillaRCC299_v3.0_11nt.jf >> MpusillaRCC299_v3.0_11nt.log 2>&1 &

cd $HASHDIR/Mguttatus_v2.0/ ; $JELFISH -p 48202 -k 23 -hash Mguttatus_v2.0_23nt.jf >> Mguttatus_v2.0_23nt.log 2>&1 &
cd $HASHDIR/Mguttatus_v2.0/ ; $JELFISH -p 47202 -k 15 -hash Mguttatus_v2.0_15nt.jf >> Mguttatus_v2.0_15nt.log 2>&1 &
cd $HASHDIR/Mguttatus_v2.0/ ; $JELFISH -p 46202 -k 11 -hash Mguttatus_v2.0_11nt.jf >> Mguttatus_v2.0_11nt.log 2>&1 &

cd $HASHDIR/Ppersica_v2.0/ ; $JELFISH -p 48203 -k 23 -hash Ppersica_v2.0_23nt.jf >> Ppersica_v2.0_23nt.log 2>&1 &
cd $HASHDIR/Ppersica_v2.0/ ; $JELFISH -p 47203 -k 15 -hash Ppersica_v2.0_15nt.jf >> Ppersica_v2.0_15nt.log 2>&1 &
cd $HASHDIR/Ppersica_v2.0/ ; $JELFISH -p 46203 -k 11 -hash Ppersica_v2.0_11nt.jf >> Ppersica_v2.0_11nt.log 2>&1 &

cd $HASHDIR/Rcommunis_TIGR.0.1/ ; $JELFISH -p 48204 -k 23 -hash Rcommunis_TIGR.0.1_23nt.jf >> Rcommunis_TIGR.0.1_23nt.log 2>&1 &
cd $HASHDIR/Rcommunis_TIGR.0.1/ ; $JELFISH -p 47204 -k 15 -hash Rcommunis_TIGR.0.1_15nt.jf >> Rcommunis_TIGR.0.1_15nt.log 2>&1 &
cd $HASHDIR/Rcommunis_TIGR.0.1/ ; $JELFISH -p 46204 -k 11 -hash Rcommunis_TIGR.0.1_11nt.jf >> Rcommunis_TIGR.0.1_11nt.log 2>&1 &

cd $HASHDIR/Spolyrhiza_v1/ ; $JELFISH -p 48205 -k 23 -hash Spolyrhiza_v1_23nt.jf >> Spolyrhiza_v1_23nt.log 2>&1 &
cd $HASHDIR/Spolyrhiza_v1/ ; $JELFISH -p 47205 -k 15 -hash Spolyrhiza_v1_15nt.jf >> Spolyrhiza_v1_15nt.log 2>&1 &
cd $HASHDIR/Spolyrhiza_v1/ ; $JELFISH -p 46205 -k 11 -hash Spolyrhiza_v1_11nt.jf >> Spolyrhiza_v1_11nt.log 2>&1 &

cd $HASHDIR/Vcarteri_v2/ ; $JELFISH -p 48206 -k 23 -hash Vcarteri_v2_23nt.jf >> Vcarteri_v2_23nt.log 2>&1 &
cd $HASHDIR/Vcarteri_v2/ ; $JELFISH -p 47206 -k 15 -hash Vcarteri_v2_15nt.jf >> Vcarteri_v2_15nt.log 2>&1 &
cd $HASHDIR/Vcarteri_v2/ ; $JELFISH -p 46206 -k 11 -hash Vcarteri_v2_11nt.jf >> Vcarteri_v2_11nt.log 2>&1 &
