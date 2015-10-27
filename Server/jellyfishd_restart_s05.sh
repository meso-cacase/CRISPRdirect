#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_s00.pl"
HASHDIR="/ssd/jellyhash"
LOGDIR="/ssd/jellylog"

$JELFISH -p 48098 -k 23 -hash $HASHDIR/OryAfe1.0/OryAfe1.0_23nt.jf >> $LOGDIR/OryAfe1.0_23nt.log 2>&1 &
$JELFISH -p 47098 -k 15 -hash $HASHDIR/OryAfe1.0/OryAfe1.0_15nt.jf >> $LOGDIR/OryAfe1.0_15nt.log 2>&1 &
$JELFISH -p 46098 -k 11 -hash $HASHDIR/OryAfe1.0/OryAfe1.0_11nt.jf >> $LOGDIR/OryAfe1.0_11nt.log 2>&1 &

$JELFISH -p 48099 -k 23 -hash $HASHDIR/PoeFor_5.1.2/PoeFor_5.1.2_23nt.jf >> $LOGDIR/PoeFor_5.1.2_23nt.log 2>&1 &
$JELFISH -p 47099 -k 15 -hash $HASHDIR/PoeFor_5.1.2/PoeFor_5.1.2_15nt.jf >> $LOGDIR/PoeFor_5.1.2_15nt.log 2>&1 &
$JELFISH -p 46099 -k 11 -hash $HASHDIR/PoeFor_5.1.2/PoeFor_5.1.2_11nt.jf >> $LOGDIR/PoeFor_5.1.2_11nt.log 2>&1 &

$JELFISH -p 48100 -k 23 -hash $HASHDIR/CSAV2.0/CSAV2.0_23nt.jf >> $LOGDIR/CSAV2.0_23nt.log 2>&1 &
$JELFISH -p 47100 -k 15 -hash $HASHDIR/CSAV2.0/CSAV2.0_15nt.jf >> $LOGDIR/CSAV2.0_15nt.log 2>&1 &
$JELFISH -p 46100 -k 11 -hash $HASHDIR/CSAV2.0/CSAV2.0_11nt.jf >> $LOGDIR/CSAV2.0_11nt.log 2>&1 &

$JELFISH -p 48101 -k 23 -hash $HASHDIR/AstMex102/AstMex102_23nt.jf >> $LOGDIR/AstMex102_23nt.log 2>&1 &
$JELFISH -p 47101 -k 15 -hash $HASHDIR/AstMex102/AstMex102_15nt.jf >> $LOGDIR/AstMex102_15nt.log 2>&1 &
$JELFISH -p 46101 -k 11 -hash $HASHDIR/AstMex102/AstMex102_11nt.jf >> $LOGDIR/AstMex102_11nt.log 2>&1 &

$JELFISH -p 48102 -k 23 -hash $HASHDIR/PelSin_1.0/PelSin_1.0_23nt.jf >> $LOGDIR/PelSin_1.0_23nt.log 2>&1 &
$JELFISH -p 47102 -k 15 -hash $HASHDIR/PelSin_1.0/PelSin_1.0_15nt.jf >> $LOGDIR/PelSin_1.0_15nt.log 2>&1 &
$JELFISH -p 46102 -k 11 -hash $HASHDIR/PelSin_1.0/PelSin_1.0_11nt.jf >> $LOGDIR/PelSin_1.0_11nt.log 2>&1 &

$JELFISH -p 48103 -k 23 -hash $HASHDIR/MacFas5.0/MacFas5.0_23nt.jf >> $LOGDIR/MacFas5.0_23nt.log 2>&1 &
$JELFISH -p 47103 -k 15 -hash $HASHDIR/MacFas5.0/MacFas5.0_15nt.jf >> $LOGDIR/MacFas5.0_15nt.log 2>&1 &
$JELFISH -p 46103 -k 11 -hash $HASHDIR/MacFas5.0/MacFas5.0_11nt.jf >> $LOGDIR/MacFas5.0_11nt.log 2>&1 &

$JELFISH -p 48104 -k 23 -hash $HASHDIR/BGI_duck_1.0/BGI_duck_1.0_23nt.jf >> $LOGDIR/BGI_duck_1.0_23nt.log 2>&1 &
$JELFISH -p 47104 -k 15 -hash $HASHDIR/BGI_duck_1.0/BGI_duck_1.0_15nt.jf >> $LOGDIR/BGI_duck_1.0_15nt.log 2>&1 &
$JELFISH -p 46104 -k 11 -hash $HASHDIR/BGI_duck_1.0/BGI_duck_1.0_11nt.jf >> $LOGDIR/BGI_duck_1.0_11nt.log 2>&1 &

$JELFISH -p 48105 -k 23 -hash $HASHDIR/FicAlb_1.4/FicAlb_1.4_23nt.jf >> $LOGDIR/FicAlb_1.4_23nt.log 2>&1 &
$JELFISH -p 47105 -k 15 -hash $HASHDIR/FicAlb_1.4/FicAlb_1.4_15nt.jf >> $LOGDIR/FicAlb_1.4_15nt.log 2>&1 &
$JELFISH -p 46105 -k 11 -hash $HASHDIR/FicAlb_1.4/FicAlb_1.4_11nt.jf >> $LOGDIR/FicAlb_1.4_11nt.log 2>&1 &

$JELFISH -p 48106 -k 23 -hash $HASHDIR/Pham/Pham_23nt.jf >> $LOGDIR/Pham_23nt.log 2>&1 &
$JELFISH -p 47106 -k 15 -hash $HASHDIR/Pham/Pham_15nt.jf >> $LOGDIR/Pham_15nt.log 2>&1 &
$JELFISH -p 46106 -k 11 -hash $HASHDIR/Pham/Pham_11nt.jf >> $LOGDIR/Pham_11nt.log 2>&1 &

$JELFISH -p 48107 -k 23 -hash $HASHDIR/Xipmac4.4.2/Xipmac4.4.2_23nt.jf >> $LOGDIR/Xipmac4.4.2_23nt.log 2>&1 &
$JELFISH -p 47107 -k 15 -hash $HASHDIR/Xipmac4.4.2/Xipmac4.4.2_15nt.jf >> $LOGDIR/Xipmac4.4.2_15nt.log 2>&1 &
$JELFISH -p 46107 -k 11 -hash $HASHDIR/Xipmac4.4.2/Xipmac4.4.2_11nt.jf >> $LOGDIR/Xipmac4.4.2_11nt.log 2>&1 &

$JELFISH -p 48108 -k 23 -hash $HASHDIR/MicOch1.0/MicOch1.0_23nt.jf >> $LOGDIR/MicOch1.0_23nt.log 2>&1 &
$JELFISH -p 47108 -k 15 -hash $HASHDIR/MicOch1.0/MicOch1.0_15nt.jf >> $LOGDIR/MicOch1.0_15nt.log 2>&1 &
$JELFISH -p 46108 -k 11 -hash $HASHDIR/MicOch1.0/MicOch1.0_11nt.jf >> $LOGDIR/MicOch1.0_11nt.log 2>&1 &

$JELFISH -p 48109 -k 23 -hash $HASHDIR/PhyMac_2.0.2/PhyMac_2.0.2_23nt.jf >> $LOGDIR/PhyMac_2.0.2_23nt.log 2>&1 &
$JELFISH -p 47109 -k 15 -hash $HASHDIR/PhyMac_2.0.2/PhyMac_2.0.2_15nt.jf >> $LOGDIR/PhyMac_2.0.2_15nt.log 2>&1 &
$JELFISH -p 46109 -k 11 -hash $HASHDIR/PhyMac_2.0.2/PhyMac_2.0.2_11nt.jf >> $LOGDIR/PhyMac_2.0.2_11nt.log 2>&1 &

$JELFISH -p 48110 -k 23 -hash $HASHDIR/LepOcu1/LepOcu1_23nt.jf >> $LOGDIR/LepOcu1_23nt.log 2>&1 &
$JELFISH -p 47110 -k 15 -hash $HASHDIR/LepOcu1/LepOcu1_15nt.jf >> $LOGDIR/LepOcu1_15nt.log 2>&1 &
$JELFISH -p 46110 -k 11 -hash $HASHDIR/LepOcu1/LepOcu1_11nt.jf >> $LOGDIR/LepOcu1_11nt.log 2>&1 &

$JELFISH -p 48111 -k 23 -hash $HASHDIR/ChlSab1.1/ChlSab1.1_23nt.jf >> $LOGDIR/ChlSab1.1_23nt.log 2>&1 &
$JELFISH -p 47111 -k 15 -hash $HASHDIR/ChlSab1.1/ChlSab1.1_15nt.jf >> $LOGDIR/ChlSab1.1_15nt.log 2>&1 &
$JELFISH -p 46111 -k 11 -hash $HASHDIR/ChlSab1.1/ChlSab1.1_11nt.jf >> $LOGDIR/ChlSab1.1_11nt.log 2>&1 &

$JELFISH -p 48112 -k 23 -hash $HASHDIR/Acyr_2.0/Acyr_2.0_23nt.jf >> $LOGDIR/Acyr_2.0_23nt.log 2>&1 &
$JELFISH -p 47112 -k 15 -hash $HASHDIR/Acyr_2.0/Acyr_2.0_15nt.jf >> $LOGDIR/Acyr_2.0_15nt.log 2>&1 &
$JELFISH -p 46112 -k 11 -hash $HASHDIR/Acyr_2.0/Acyr_2.0_11nt.jf >> $LOGDIR/Acyr_2.0_11nt.log 2>&1 &

$JELFISH -p 48113 -k 23 -hash $HASHDIR/AaegL3/AaegL3_23nt.jf >> $LOGDIR/AaegL3_23nt.log 2>&1 &
$JELFISH -p 47113 -k 15 -hash $HASHDIR/AaegL3/AaegL3_15nt.jf >> $LOGDIR/AaegL3_15nt.log 2>&1 &
$JELFISH -p 46113 -k 11 -hash $HASHDIR/AaegL3/AaegL3_11nt.jf >> $LOGDIR/AaegL3_11nt.log 2>&1 &

$JELFISH -p 48114 -k 23 -hash $HASHDIR/Aqu1/Aqu1_23nt.jf >> $LOGDIR/Aqu1_23nt.log 2>&1 &
$JELFISH -p 47114 -k 15 -hash $HASHDIR/Aqu1/Aqu1_15nt.jf >> $LOGDIR/Aqu1_15nt.log 2>&1 &
$JELFISH -p 46114 -k 11 -hash $HASHDIR/Aqu1/Aqu1_11nt.jf >> $LOGDIR/Aqu1_11nt.log 2>&1 &

$JELFISH -p 48115 -k 23 -hash $HASHDIR/AdarC3/AdarC3_23nt.jf >> $LOGDIR/AdarC3_23nt.log 2>&1 &
$JELFISH -p 47115 -k 15 -hash $HASHDIR/AdarC3/AdarC3_15nt.jf >> $LOGDIR/AdarC3_15nt.log 2>&1 &
$JELFISH -p 46115 -k 11 -hash $HASHDIR/AdarC3/AdarC3_11nt.jf >> $LOGDIR/AdarC3_11nt.log 2>&1 &

$JELFISH -p 48116 -k 23 -hash $HASHDIR/Attacep1.0/Attacep1.0_23nt.jf >> $LOGDIR/Attacep1.0_23nt.log 2>&1 &
$JELFISH -p 47116 -k 15 -hash $HASHDIR/Attacep1.0/Attacep1.0_15nt.jf >> $LOGDIR/Attacep1.0_15nt.log 2>&1 &
$JELFISH -p 46116 -k 11 -hash $HASHDIR/Attacep1.0/Attacep1.0_11nt.jf >> $LOGDIR/Attacep1.0_11nt.log 2>&1 &

$JELFISH -p 48117 -k 23 -hash $HASHDIR/ASM15162v1/ASM15162v1_23nt.jf >> $LOGDIR/ASM15162v1_23nt.log 2>&1 &
$JELFISH -p 47117 -k 15 -hash $HASHDIR/ASM15162v1/ASM15162v1_15nt.jf >> $LOGDIR/ASM15162v1_15nt.log 2>&1 &
$JELFISH -p 46117 -k 11 -hash $HASHDIR/ASM15162v1/ASM15162v1_11nt.jf >> $LOGDIR/ASM15162v1_11nt.log 2>&1 &

$JELFISH -p 48118 -k 23 -hash $HASHDIR/B_malayi_3.0/B_malayi_3.0_23nt.jf >> $LOGDIR/B_malayi_3.0_23nt.log 2>&1 &
$JELFISH -p 47118 -k 15 -hash $HASHDIR/B_malayi_3.0/B_malayi_3.0_15nt.jf >> $LOGDIR/B_malayi_3.0_15nt.log 2>&1 &
$JELFISH -p 46118 -k 11 -hash $HASHDIR/B_malayi_3.0/B_malayi_3.0_11nt.jf >> $LOGDIR/B_malayi_3.0_11nt.log 2>&1 &

$JELFISH -p 48119 -k 23 -hash $HASHDIR/Capte_v1.0/Capte_v1.0_23nt.jf >> $LOGDIR/Capte_v1.0_23nt.log 2>&1 &
$JELFISH -p 47119 -k 15 -hash $HASHDIR/Capte_v1.0/Capte_v1.0_15nt.jf >> $LOGDIR/Capte_v1.0_15nt.log 2>&1 &
$JELFISH -p 46119 -k 11 -hash $HASHDIR/Capte_v1.0/Capte_v1.0_11nt.jf >> $LOGDIR/Capte_v1.0_11nt.log 2>&1 &

$JELFISH -p 48120 -k 23 -hash $HASHDIR/oyster_v9/oyster_v9_23nt.jf >> $LOGDIR/oyster_v9_23nt.log 2>&1 &
$JELFISH -p 47120 -k 15 -hash $HASHDIR/oyster_v9/oyster_v9_15nt.jf >> $LOGDIR/oyster_v9_15nt.log 2>&1 &
$JELFISH -p 46120 -k 11 -hash $HASHDIR/oyster_v9/oyster_v9_11nt.jf >> $LOGDIR/oyster_v9_11nt.log 2>&1 &

$JELFISH -p 48121 -k 23 -hash $HASHDIR/CpipJ2/CpipJ2_23nt.jf >> $LOGDIR/CpipJ2_23nt.log 2>&1 &
$JELFISH -p 47121 -k 15 -hash $HASHDIR/CpipJ2/CpipJ2_15nt.jf >> $LOGDIR/CpipJ2_15nt.log 2>&1 &
$JELFISH -p 46121 -k 11 -hash $HASHDIR/CpipJ2/CpipJ2_11nt.jf >> $LOGDIR/CpipJ2_11nt.log 2>&1 &

$JELFISH -p 48122 -k 23 -hash $HASHDIR/DanPle_1.0/DanPle_1.0_23nt.jf >> $LOGDIR/DanPle_1.0_23nt.log 2>&1 &
$JELFISH -p 47122 -k 15 -hash $HASHDIR/DanPle_1.0/DanPle_1.0_15nt.jf >> $LOGDIR/DanPle_1.0_15nt.log 2>&1 &
$JELFISH -p 46122 -k 11 -hash $HASHDIR/DanPle_1.0/DanPle_1.0_11nt.jf >> $LOGDIR/DanPle_1.0_11nt.log 2>&1 &

$JELFISH -p 48123 -k 23 -hash $HASHDIR/Dappu_V1.0/Dappu_V1.0_23nt.jf >> $LOGDIR/Dappu_V1.0_23nt.log 2>&1 &
$JELFISH -p 47123 -k 15 -hash $HASHDIR/Dappu_V1.0/Dappu_V1.0_15nt.jf >> $LOGDIR/Dappu_V1.0_15nt.log 2>&1 &
$JELFISH -p 46123 -k 11 -hash $HASHDIR/Dappu_V1.0/Dappu_V1.0_11nt.jf >> $LOGDIR/Dappu_V1.0_11nt.log 2>&1 &

$JELFISH -p 48124 -k 23 -hash $HASHDIR/DendPond_1.0/DendPond_1.0_23nt.jf >> $LOGDIR/DendPond_1.0_23nt.log 2>&1 &
$JELFISH -p 47124 -k 15 -hash $HASHDIR/DendPond_1.0/DendPond_1.0_15nt.jf >> $LOGDIR/DendPond_1.0_15nt.log 2>&1 &
$JELFISH -p 46124 -k 11 -hash $HASHDIR/DendPond_1.0/DendPond_1.0_11nt.jf >> $LOGDIR/DendPond_1.0_11nt.log 2>&1 &

$JELFISH -p 48125 -k 23 -hash $HASHDIR/dwil_caf1/dwil_caf1_23nt.jf >> $LOGDIR/dwil_caf1_23nt.log 2>&1 &
$JELFISH -p 47125 -k 15 -hash $HASHDIR/dwil_caf1/dwil_caf1_15nt.jf >> $LOGDIR/dwil_caf1_15nt.log 2>&1 &
$JELFISH -p 46125 -k 11 -hash $HASHDIR/dwil_caf1/dwil_caf1_11nt.jf >> $LOGDIR/dwil_caf1_11nt.log 2>&1 &

$JELFISH -p 48126 -k 23 -hash $HASHDIR/Hmel1/Hmel1_23nt.jf >> $LOGDIR/Hmel1_23nt.log 2>&1 &
$JELFISH -p 47126 -k 15 -hash $HASHDIR/Hmel1/Hmel1_15nt.jf >> $LOGDIR/Hmel1_15nt.log 2>&1 &
$JELFISH -p 46126 -k 11 -hash $HASHDIR/Hmel1/Hmel1_11nt.jf >> $LOGDIR/Hmel1_11nt.log 2>&1 &

$JELFISH -p 48127 -k 23 -hash $HASHDIR/Helro1/Helro1_23nt.jf >> $LOGDIR/Helro1_23nt.log 2>&1 &
$JELFISH -p 47127 -k 15 -hash $HASHDIR/Helro1/Helro1_15nt.jf >> $LOGDIR/Helro1_15nt.log 2>&1 &
$JELFISH -p 46127 -k 11 -hash $HASHDIR/Helro1/Helro1_11nt.jf >> $LOGDIR/Helro1_11nt.log 2>&1 &

$JELFISH -p 48128 -k 23 -hash $HASHDIR/IscaW1/IscaW1_23nt.jf >> $LOGDIR/IscaW1_23nt.log 2>&1 &
$JELFISH -p 47128 -k 15 -hash $HASHDIR/IscaW1/IscaW1_15nt.jf >> $LOGDIR/IscaW1_15nt.log 2>&1 &
$JELFISH -p 46128 -k 11 -hash $HASHDIR/IscaW1/IscaW1_11nt.jf >> $LOGDIR/IscaW1_11nt.log 2>&1 &

$JELFISH -p 48129 -k 23 -hash $HASHDIR/Loa_loa_V3/Loa_loa_V3_23nt.jf >> $LOGDIR/Loa_loa_V3_23nt.log 2>&1 &
$JELFISH -p 47129 -k 15 -hash $HASHDIR/Loa_loa_V3/Loa_loa_V3_15nt.jf >> $LOGDIR/Loa_loa_V3_15nt.log 2>&1 &
$JELFISH -p 46129 -k 11 -hash $HASHDIR/Loa_loa_V3/Loa_loa_V3_11nt.jf >> $LOGDIR/Loa_loa_V3_11nt.log 2>&1 &

$JELFISH -p 48130 -k 23 -hash $HASHDIR/Lotgi1/Lotgi1_23nt.jf >> $LOGDIR/Lotgi1_23nt.log 2>&1 &
$JELFISH -p 47130 -k 15 -hash $HASHDIR/Lotgi1/Lotgi1_15nt.jf >> $LOGDIR/Lotgi1_15nt.log 2>&1 &
$JELFISH -p 46130 -k 11 -hash $HASHDIR/Lotgi1/Lotgi1_11nt.jf >> $LOGDIR/Lotgi1_11nt.log 2>&1 &

$JELFISH -p 48131 -k 23 -hash $HASHDIR/Msca1/Msca1_23nt.jf >> $LOGDIR/Msca1_23nt.log 2>&1 &
$JELFISH -p 47131 -k 15 -hash $HASHDIR/Msca1/Msca1_15nt.jf >> $LOGDIR/Msca1_15nt.log 2>&1 &
$JELFISH -p 46131 -k 11 -hash $HASHDIR/Msca1/Msca1_11nt.jf >> $LOGDIR/Msca1_11nt.log 2>&1 &

$JELFISH -p 48132 -k 23 -hash $HASHDIR/MelCinx1.0/MelCinx1.0_23nt.jf >> $LOGDIR/MelCinx1.0_23nt.log 2>&1 &
$JELFISH -p 47132 -k 15 -hash $HASHDIR/MelCinx1.0/MelCinx1.0_15nt.jf >> $LOGDIR/MelCinx1.0_15nt.log 2>&1 &
$JELFISH -p 46132 -k 11 -hash $HASHDIR/MelCinx1.0/MelCinx1.0_11nt.jf >> $LOGDIR/MelCinx1.0_11nt.log 2>&1 &

$JELFISH -p 48133 -k 23 -hash $HASHDIR/MneLei/MneLei_23nt.jf >> $LOGDIR/MneLei_23nt.log 2>&1 &
$JELFISH -p 47133 -k 15 -hash $HASHDIR/MneLei/MneLei_15nt.jf >> $LOGDIR/MneLei_15nt.log 2>&1 &
$JELFISH -p 46133 -k 11 -hash $HASHDIR/MneLei/MneLei_11nt.jf >> $LOGDIR/MneLei_11nt.log 2>&1 &

$JELFISH -p 48134 -k 23 -hash $HASHDIR/Nvit_2.1/Nvit_2.1_23nt.jf >> $LOGDIR/Nvit_2.1_23nt.log 2>&1 &
$JELFISH -p 47134 -k 15 -hash $HASHDIR/Nvit_2.1/Nvit_2.1_15nt.jf >> $LOGDIR/Nvit_2.1_15nt.log 2>&1 &
$JELFISH -p 46134 -k 11 -hash $HASHDIR/Nvit_2.1/Nvit_2.1_11nt.jf >> $LOGDIR/Nvit_2.1_11nt.log 2>&1 &

$JELFISH -p 48135 -k 23 -hash $HASHDIR/ASM20922v1/ASM20922v1_23nt.jf >> $LOGDIR/ASM20922v1_23nt.log 2>&1 &
$JELFISH -p 47135 -k 15 -hash $HASHDIR/ASM20922v1/ASM20922v1_15nt.jf >> $LOGDIR/ASM20922v1_15nt.log 2>&1 &
$JELFISH -p 46135 -k 11 -hash $HASHDIR/ASM20922v1/ASM20922v1_11nt.jf >> $LOGDIR/ASM20922v1_11nt.log 2>&1 &

$JELFISH -p 48136 -k 23 -hash $HASHDIR/Cameroon_v3/Cameroon_v3_23nt.jf >> $LOGDIR/Cameroon_v3_23nt.log 2>&1 &
$JELFISH -p 47136 -k 15 -hash $HASHDIR/Cameroon_v3/Cameroon_v3_15nt.jf >> $LOGDIR/Cameroon_v3_15nt.log 2>&1 &
$JELFISH -p 46136 -k 11 -hash $HASHDIR/Cameroon_v3/Cameroon_v3_11nt.jf >> $LOGDIR/Cameroon_v3_11nt.log 2>&1 &

$JELFISH -p 48137 -k 23 -hash $HASHDIR/PhumU2/PhumU2_23nt.jf >> $LOGDIR/PhumU2_23nt.log 2>&1 &
$JELFISH -p 47137 -k 15 -hash $HASHDIR/PhumU2/PhumU2_15nt.jf >> $LOGDIR/PhumU2_15nt.log 2>&1 &
$JELFISH -p 46137 -k 11 -hash $HASHDIR/PhumU2/PhumU2_11nt.jf >> $LOGDIR/PhumU2_11nt.log 2>&1 &

$JELFISH -p 48138 -k 23 -hash $HASHDIR/RproC1/RproC1_23nt.jf >> $LOGDIR/RproC1_23nt.log 2>&1 &
$JELFISH -p 47138 -k 15 -hash $HASHDIR/RproC1/RproC1_15nt.jf >> $LOGDIR/RproC1_15nt.log 2>&1 &
$JELFISH -p 46138 -k 11 -hash $HASHDIR/RproC1/RproC1_11nt.jf >> $LOGDIR/RproC1_11nt.log 2>&1 &

$JELFISH -p 48139 -k 23 -hash $HASHDIR/ASM23792v2/ASM23792v2_23nt.jf >> $LOGDIR/ASM23792v2_23nt.log 2>&1 &
$JELFISH -p 47139 -k 15 -hash $HASHDIR/ASM23792v2/ASM23792v2_15nt.jf >> $LOGDIR/ASM23792v2_15nt.log 2>&1 &
$JELFISH -p 46139 -k 11 -hash $HASHDIR/ASM23792v2/ASM23792v2_11nt.jf >> $LOGDIR/ASM23792v2_11nt.log 2>&1 &

$JELFISH -p 48140 -k 23 -hash $HASHDIR/Si_gnG/Si_gnG_23nt.jf >> $LOGDIR/Si_gnG_23nt.log 2>&1 &
$JELFISH -p 47140 -k 15 -hash $HASHDIR/Si_gnG/Si_gnG_15nt.jf >> $LOGDIR/Si_gnG_15nt.log 2>&1 &
$JELFISH -p 46140 -k 11 -hash $HASHDIR/Si_gnG/Si_gnG_11nt.jf >> $LOGDIR/Si_gnG_11nt.log 2>&1 &

$JELFISH -p 48141 -k 23 -hash $HASHDIR/Smar1/Smar1_23nt.jf >> $LOGDIR/Smar1_23nt.log 2>&1 &
$JELFISH -p 47141 -k 15 -hash $HASHDIR/Smar1/Smar1_15nt.jf >> $LOGDIR/Smar1_15nt.log 2>&1 &
$JELFISH -p 46141 -k 11 -hash $HASHDIR/Smar1/Smar1_11nt.jf >> $LOGDIR/Smar1_11nt.log 2>&1 &

$JELFISH -p 48142 -k 23 -hash $HASHDIR/ASM23943v1/ASM23943v1_23nt.jf >> $LOGDIR/ASM23943v1_23nt.log 2>&1 &
$JELFISH -p 47142 -k 15 -hash $HASHDIR/ASM23943v1/ASM23943v1_15nt.jf >> $LOGDIR/ASM23943v1_15nt.log 2>&1 &
$JELFISH -p 46142 -k 11 -hash $HASHDIR/ASM23943v1/ASM23943v1_11nt.jf >> $LOGDIR/ASM23943v1_11nt.log 2>&1 &

$JELFISH -p 48143 -k 23 -hash $HASHDIR/Tcas3/Tcas3_23nt.jf >> $LOGDIR/Tcas3_23nt.log 2>&1 &
$JELFISH -p 47143 -k 15 -hash $HASHDIR/Tcas3/Tcas3_15nt.jf >> $LOGDIR/Tcas3_15nt.log 2>&1 &
$JELFISH -p 46143 -k 11 -hash $HASHDIR/Tcas3/Tcas3_11nt.jf >> $LOGDIR/Tcas3_11nt.log 2>&1 &

$JELFISH -p 48144 -k 23 -hash $HASHDIR/Tspiralis1/Tspiralis1_23nt.jf >> $LOGDIR/Tspiralis1_23nt.log 2>&1 &
$JELFISH -p 47144 -k 15 -hash $HASHDIR/Tspiralis1/Tspiralis1_15nt.jf >> $LOGDIR/Tspiralis1_15nt.log 2>&1 &
$JELFISH -p 46144 -k 11 -hash $HASHDIR/Tspiralis1/Tspiralis1_11nt.jf >> $LOGDIR/Tspiralis1_11nt.log 2>&1 &

$JELFISH -p 48145 -k 23 -hash $HASHDIR/ASM15027v1/ASM15027v1_23nt.jf >> $LOGDIR/ASM15027v1_23nt.log 2>&1 &
$JELFISH -p 47145 -k 15 -hash $HASHDIR/ASM15027v1/ASM15027v1_15nt.jf >> $LOGDIR/ASM15027v1_15nt.log 2>&1 &
$JELFISH -p 46145 -k 11 -hash $HASHDIR/ASM15027v1/ASM15027v1_11nt.jf >> $LOGDIR/ASM15027v1_11nt.log 2>&1 &

$JELFISH -p 48146 -k 23 -hash $HASHDIR/ZooNev1.0/ZooNev1.0_23nt.jf >> $LOGDIR/ZooNev1.0_23nt.log 2>&1 &
$JELFISH -p 47146 -k 15 -hash $HASHDIR/ZooNev1.0/ZooNev1.0_15nt.jf >> $LOGDIR/ZooNev1.0_15nt.log 2>&1 &
$JELFISH -p 46146 -k 11 -hash $HASHDIR/ZooNev1.0/ZooNev1.0_11nt.jf >> $LOGDIR/ZooNev1.0_11nt.log 2>&1 &

$JELFISH -p 48147 -k 23 -hash $HASHDIR/ASM34733v1/ASM34733v1_23nt.jf >> $LOGDIR/ASM34733v1_23nt.log 2>&1 &
$JELFISH -p 47147 -k 15 -hash $HASHDIR/ASM34733v1/ASM34733v1_15nt.jf >> $LOGDIR/ASM34733v1_15nt.log 2>&1 &
$JELFISH -p 46147 -k 11 -hash $HASHDIR/ASM34733v1/ASM34733v1_11nt.jf >> $LOGDIR/ASM34733v1_11nt.log 2>&1 &

$JELFISH -p 48148 -k 23 -hash $HASHDIR/AMTR1.0/AMTR1.0_23nt.jf >> $LOGDIR/AMTR1.0_23nt.log 2>&1 &
$JELFISH -p 47148 -k 15 -hash $HASHDIR/AMTR1.0/AMTR1.0_15nt.jf >> $LOGDIR/AMTR1.0_15nt.log 2>&1 &
$JELFISH -p 46148 -k 11 -hash $HASHDIR/AMTR1.0/AMTR1.0_11nt.jf >> $LOGDIR/AMTR1.0_11nt.log 2>&1 &

$JELFISH -p 48149 -k 23 -hash $HASHDIR/Araly_v.1.0/Araly_v.1.0_23nt.jf >> $LOGDIR/Araly_v.1.0_23nt.log 2>&1 &
$JELFISH -p 47149 -k 15 -hash $HASHDIR/Araly_v.1.0/Araly_v.1.0_15nt.jf >> $LOGDIR/Araly_v.1.0_15nt.log 2>&1 &
$JELFISH -p 46149 -k 11 -hash $HASHDIR/Araly_v.1.0/Araly_v.1.0_11nt.jf >> $LOGDIR/Araly_v.1.0_11nt.log 2>&1 &

$JELFISH -p 48150 -k 23 -hash $HASHDIR/TAIR10_en/TAIR10_en_23nt.jf >> $LOGDIR/TAIR10_en_23nt.log 2>&1 &
$JELFISH -p 47150 -k 15 -hash $HASHDIR/TAIR10_en/TAIR10_en_15nt.jf >> $LOGDIR/TAIR10_en_15nt.log 2>&1 &
$JELFISH -p 46150 -k 11 -hash $HASHDIR/TAIR10_en/TAIR10_en_11nt.jf >> $LOGDIR/TAIR10_en_11nt.log 2>&1 &

$JELFISH -p 48151 -k 23 -hash $HASHDIR/Bradi_v1.0/Bradi_v1.0_23nt.jf >> $LOGDIR/Bradi_v1.0_23nt.log 2>&1 &
$JELFISH -p 47151 -k 15 -hash $HASHDIR/Bradi_v1.0/Bradi_v1.0_15nt.jf >> $LOGDIR/Bradi_v1.0_15nt.log 2>&1 &
$JELFISH -p 46151 -k 11 -hash $HASHDIR/Bradi_v1.0/Bradi_v1.0_11nt.jf >> $LOGDIR/Bradi_v1.0_11nt.log 2>&1 &

$JELFISH -p 48152 -k 23 -hash $HASHDIR/Braol_v2.1/Braol_v2.1_23nt.jf >> $LOGDIR/Braol_v2.1_23nt.log 2>&1 &
$JELFISH -p 47152 -k 15 -hash $HASHDIR/Braol_v2.1/Braol_v2.1_15nt.jf >> $LOGDIR/Braol_v2.1_15nt.log 2>&1 &
$JELFISH -p 46152 -k 11 -hash $HASHDIR/Braol_v2.1/Braol_v2.1_11nt.jf >> $LOGDIR/Braol_v2.1_11nt.log 2>&1 &

$JELFISH -p 48153 -k 23 -hash $HASHDIR/IVFCAASv1/IVFCAASv1_23nt.jf >> $LOGDIR/IVFCAASv1_23nt.log 2>&1 &
$JELFISH -p 47153 -k 15 -hash $HASHDIR/IVFCAASv1/IVFCAASv1_15nt.jf >> $LOGDIR/IVFCAASv1_15nt.log 2>&1 &
$JELFISH -p 46153 -k 11 -hash $HASHDIR/IVFCAASv1/IVFCAASv1_11nt.jf >> $LOGDIR/IVFCAASv1_11nt.log 2>&1 &

$JELFISH -p 48154 -k 23 -hash $HASHDIR/Chlre_v3.1/Chlre_v3.1_23nt.jf >> $LOGDIR/Chlre_v3.1_23nt.log 2>&1 &
$JELFISH -p 47154 -k 15 -hash $HASHDIR/Chlre_v3.1/Chlre_v3.1_15nt.jf >> $LOGDIR/Chlre_v3.1_15nt.log 2>&1 &
$JELFISH -p 46154 -k 11 -hash $HASHDIR/Chlre_v3.1/Chlre_v3.1_11nt.jf >> $LOGDIR/Chlre_v3.1_11nt.log 2>&1 &

$JELFISH -p 48155 -k 23 -hash $HASHDIR/ASM9120v1/ASM9120v1_23nt.jf >> $LOGDIR/ASM9120v1_23nt.log 2>&1 &
$JELFISH -p 47155 -k 15 -hash $HASHDIR/ASM9120v1/ASM9120v1_15nt.jf >> $LOGDIR/ASM9120v1_15nt.log 2>&1 &
$JELFISH -p 46155 -k 11 -hash $HASHDIR/ASM9120v1/ASM9120v1_11nt.jf >> $LOGDIR/ASM9120v1_11nt.log 2>&1 &

$JELFISH -p 48156 -k 23 -hash $HASHDIR/Soybn_V1.0/Soybn_V1.0_23nt.jf >> $LOGDIR/Soybn_V1.0_23nt.log 2>&1 &
$JELFISH -p 47156 -k 15 -hash $HASHDIR/Soybn_V1.0/Soybn_V1.0_15nt.jf >> $LOGDIR/Soybn_V1.0_15nt.log 2>&1 &
$JELFISH -p 46156 -k 11 -hash $HASHDIR/Soybn_V1.0/Soybn_V1.0_11nt.jf >> $LOGDIR/Soybn_V1.0_11nt.log 2>&1 &

$JELFISH -p 48157 -k 23 -hash $HASHDIR/Horvu_v1/Horvu_v1_23nt.jf >> $LOGDIR/Horvu_v1_23nt.log 2>&1 &
$JELFISH -p 47157 -k 15 -hash $HASHDIR/Horvu_v1/Horvu_v1_15nt.jf >> $LOGDIR/Horvu_v1_15nt.log 2>&1 &
$JELFISH -p 46157 -k 11 -hash $HASHDIR/Horvu_v1/Horvu_v1_11nt.jf >> $LOGDIR/Horvu_v1_11nt.log 2>&1 &

$JELFISH -p 48158 -k 23 -hash $HASHDIR/Lperr_V1.4/Lperr_V1.4_23nt.jf >> $LOGDIR/Lperr_V1.4_23nt.log 2>&1 &
$JELFISH -p 47158 -k 15 -hash $HASHDIR/Lperr_V1.4/Lperr_V1.4_15nt.jf >> $LOGDIR/Lperr_V1.4_15nt.log 2>&1 &
$JELFISH -p 46158 -k 11 -hash $HASHDIR/Lperr_V1.4/Lperr_V1.4_11nt.jf >> $LOGDIR/Lperr_V1.4_11nt.log 2>&1 &

$JELFISH -p 48159 -k 23 -hash $HASHDIR/MedtrA17_4.0/MedtrA17_4.0_23nt.jf >> $LOGDIR/MedtrA17_4.0_23nt.log 2>&1 &
$JELFISH -p 47159 -k 15 -hash $HASHDIR/MedtrA17_4.0/MedtrA17_4.0_15nt.jf >> $LOGDIR/MedtrA17_4.0_15nt.log 2>&1 &
$JELFISH -p 46159 -k 11 -hash $HASHDIR/MedtrA17_4.0/MedtrA17_4.0_11nt.jf >> $LOGDIR/MedtrA17_4.0_11nt.log 2>&1 &

$JELFISH -p 48160 -k 23 -hash $HASHDIR/MA1/MA1_23nt.jf >> $LOGDIR/MA1_23nt.log 2>&1 &
$JELFISH -p 47160 -k 15 -hash $HASHDIR/MA1/MA1_15nt.jf >> $LOGDIR/MA1_15nt.log 2>&1 &
$JELFISH -p 46160 -k 11 -hash $HASHDIR/MA1/MA1_11nt.jf >> $LOGDIR/MA1_11nt.log 2>&1 &

$JELFISH -p 48161 -k 23 -hash $HASHDIR/Obart_v1.0/Obart_v1.0_23nt.jf >> $LOGDIR/Obart_v1.0_23nt.log 2>&1 &
$JELFISH -p 47161 -k 15 -hash $HASHDIR/Obart_v1.0/Obart_v1.0_15nt.jf >> $LOGDIR/Obart_v1.0_15nt.log 2>&1 &
$JELFISH -p 46161 -k 11 -hash $HASHDIR/Obart_v1.0/Obart_v1.0_11nt.jf >> $LOGDIR/Obart_v1.0_11nt.log 2>&1 &

$JELFISH -p 48162 -k 23 -hash $HASHDIR/Orybr_v1.4b/Orybr_v1.4b_23nt.jf >> $LOGDIR/Orybr_v1.4b_23nt.log 2>&1 &
$JELFISH -p 47162 -k 15 -hash $HASHDIR/Orybr_v1.4b/Orybr_v1.4b_15nt.jf >> $LOGDIR/Orybr_v1.4b_15nt.log 2>&1 &
$JELFISH -p 46162 -k 11 -hash $HASHDIR/Orybr_v1.4b/Orybr_v1.4b_11nt.jf >> $LOGDIR/Orybr_v1.4b_11nt.log 2>&1 &

$JELFISH -p 48163 -k 23 -hash $HASHDIR/AGI1.1/AGI1.1_23nt.jf >> $LOGDIR/AGI1.1_23nt.log 2>&1 &
$JELFISH -p 47163 -k 15 -hash $HASHDIR/AGI1.1/AGI1.1_15nt.jf >> $LOGDIR/AGI1.1_15nt.log 2>&1 &
$JELFISH -p 46163 -k 11 -hash $HASHDIR/AGI1.1/AGI1.1_11nt.jf >> $LOGDIR/AGI1.1_11nt.log 2>&1 &

$JELFISH -p 48164 -k 23 -hash $HASHDIR/Orygl/Orygl_23nt.jf >> $LOGDIR/Orygl_23nt.log 2>&1 &
$JELFISH -p 47164 -k 15 -hash $HASHDIR/Orygl/Orygl_15nt.jf >> $LOGDIR/Orygl_15nt.log 2>&1 &
$JELFISH -p 46164 -k 11 -hash $HASHDIR/Orygl/Orygl_11nt.jf >> $LOGDIR/Orygl_11nt.log 2>&1 &

$JELFISH -p 48165 -k 23 -hash $HASHDIR/Orylo_v0117/Orylo_v0117_23nt.jf >> $LOGDIR/Orylo_v0117_23nt.log 2>&1 &
$JELFISH -p 47165 -k 15 -hash $HASHDIR/Orylo_v0117/Orylo_v0117_15nt.jf >> $LOGDIR/Orylo_v0117_15nt.log 2>&1 &
$JELFISH -p 46165 -k 11 -hash $HASHDIR/Orylo_v0117/Orylo_v0117_11nt.jf >> $LOGDIR/Orylo_v0117_11nt.log 2>&1 &

$JELFISH -p 48166 -k 23 -hash $HASHDIR/Oryme_v1.3/Oryme_v1.3_23nt.jf >> $LOGDIR/Oryme_v1.3_23nt.log 2>&1 &
$JELFISH -p 47166 -k 15 -hash $HASHDIR/Oryme_v1.3/Oryme_v1.3_15nt.jf >> $LOGDIR/Oryme_v1.3_15nt.log 2>&1 &
$JELFISH -p 46166 -k 11 -hash $HASHDIR/Oryme_v1.3/Oryme_v1.3_11nt.jf >> $LOGDIR/Oryme_v1.3_11nt.log 2>&1 &

$JELFISH -p 48167 -k 23 -hash $HASHDIR/Oryni/Oryni_23nt.jf >> $LOGDIR/Oryni_23nt.log 2>&1 &
$JELFISH -p 47167 -k 15 -hash $HASHDIR/Oryni/Oryni_15nt.jf >> $LOGDIR/Oryni_15nt.log 2>&1 &
$JELFISH -p 46167 -k 11 -hash $HASHDIR/Oryni/Oryni_11nt.jf >> $LOGDIR/Oryni_11nt.log 2>&1 &

$JELFISH -p 48168 -k 23 -hash $HASHDIR/Orypu/Orypu_23nt.jf >> $LOGDIR/Orypu_23nt.log 2>&1 &
$JELFISH -p 47168 -k 15 -hash $HASHDIR/Orypu/Orypu_15nt.jf >> $LOGDIR/Orypu_15nt.log 2>&1 &
$JELFISH -p 46168 -k 11 -hash $HASHDIR/Orypu/Orypu_11nt.jf >> $LOGDIR/Orypu_11nt.log 2>&1 &

$JELFISH -p 48169 -k 23 -hash $HASHDIR/PRJEB4137/PRJEB4137_23nt.jf >> $LOGDIR/PRJEB4137_23nt.log 2>&1 &
$JELFISH -p 47169 -k 15 -hash $HASHDIR/PRJEB4137/PRJEB4137_15nt.jf >> $LOGDIR/PRJEB4137_15nt.log 2>&1 &
$JELFISH -p 46169 -k 11 -hash $HASHDIR/PRJEB4137/PRJEB4137_11nt.jf >> $LOGDIR/PRJEB4137_11nt.log 2>&1 &

$JELFISH -p 48170 -k 23 -hash $HASHDIR/ASM465v1/ASM465v1_23nt.jf >> $LOGDIR/ASM465v1_23nt.log 2>&1 &
$JELFISH -p 47170 -k 15 -hash $HASHDIR/ASM465v1/ASM465v1_15nt.jf >> $LOGDIR/ASM465v1_15nt.log 2>&1 &
$JELFISH -p 46170 -k 11 -hash $HASHDIR/ASM465v1/ASM465v1_11nt.jf >> $LOGDIR/ASM465v1_11nt.log 2>&1 &

$JELFISH -p 48171 -k 23 -hash $HASHDIR/ASM9206v1/ASM9206v1_23nt.jf >> $LOGDIR/ASM9206v1_23nt.log 2>&1 &
$JELFISH -p 47171 -k 15 -hash $HASHDIR/ASM9206v1/ASM9206v1_15nt.jf >> $LOGDIR/ASM9206v1_15nt.log 2>&1 &
$JELFISH -p 46171 -k 11 -hash $HASHDIR/ASM9206v1/ASM9206v1_11nt.jf >> $LOGDIR/ASM9206v1_11nt.log 2>&1 &

$JELFISH -p 48172 -k 23 -hash $HASHDIR/ASM242v1/ASM242v1_23nt.jf >> $LOGDIR/ASM242v1_23nt.log 2>&1 &
$JELFISH -p 47172 -k 15 -hash $HASHDIR/ASM242v1/ASM242v1_15nt.jf >> $LOGDIR/ASM242v1_15nt.log 2>&1 &
$JELFISH -p 46172 -k 11 -hash $HASHDIR/ASM242v1/ASM242v1_11nt.jf >> $LOGDIR/ASM242v1_11nt.log 2>&1 &

$JELFISH -p 48173 -k 23 -hash $HASHDIR/Poptr_JGI2.0/Poptr_JGI2.0_23nt.jf >> $LOGDIR/Poptr_JGI2.0_23nt.log 2>&1 &
$JELFISH -p 47173 -k 15 -hash $HASHDIR/Poptr_JGI2.0/Poptr_JGI2.0_15nt.jf >> $LOGDIR/Poptr_JGI2.0_15nt.log 2>&1 &
$JELFISH -p 46173 -k 11 -hash $HASHDIR/Poptr_JGI2.0/Poptr_JGI2.0_11nt.jf >> $LOGDIR/Poptr_JGI2.0_11nt.log 2>&1 &

$JELFISH -p 48174 -k 23 -hash $HASHDIR/Prupe1_0/Prupe1_0_23nt.jf >> $LOGDIR/Prupe1_0_23nt.log 2>&1 &
$JELFISH -p 47174 -k 15 -hash $HASHDIR/Prupe1_0/Prupe1_0_15nt.jf >> $LOGDIR/Prupe1_0_15nt.log 2>&1 &
$JELFISH -p 46174 -k 11 -hash $HASHDIR/Prupe1_0/Prupe1_0_11nt.jf >> $LOGDIR/Prupe1_0_11nt.log 2>&1 &

$JELFISH -p 48175 -k 23 -hash $HASHDIR/Selml_v1.0/Selml_v1.0_23nt.jf >> $LOGDIR/Selml_v1.0_23nt.log 2>&1 &
$JELFISH -p 47175 -k 15 -hash $HASHDIR/Selml_v1.0/Selml_v1.0_15nt.jf >> $LOGDIR/Selml_v1.0_15nt.log 2>&1 &
$JELFISH -p 46175 -k 11 -hash $HASHDIR/Selml_v1.0/Selml_v1.0_11nt.jf >> $LOGDIR/Selml_v1.0_11nt.log 2>&1 &

$JELFISH -p 48176 -k 23 -hash $HASHDIR/Setit_JGIv2.0/Setit_JGIv2.0_23nt.jf >> $LOGDIR/Setit_JGIv2.0_23nt.log 2>&1 &
$JELFISH -p 47176 -k 15 -hash $HASHDIR/Setit_JGIv2.0/Setit_JGIv2.0_15nt.jf >> $LOGDIR/Setit_JGIv2.0_15nt.log 2>&1 &
$JELFISH -p 46176 -k 11 -hash $HASHDIR/Setit_JGIv2.0/Setit_JGIv2.0_11nt.jf >> $LOGDIR/Setit_JGIv2.0_11nt.log 2>&1 &

$JELFISH -p 48177 -k 23 -hash $HASHDIR/SL2.50/SL2.50_23nt.jf >> $LOGDIR/SL2.50_23nt.log 2>&1 &
$JELFISH -p 47177 -k 15 -hash $HASHDIR/SL2.50/SL2.50_15nt.jf >> $LOGDIR/SL2.50_15nt.log 2>&1 &
$JELFISH -p 46177 -k 11 -hash $HASHDIR/SL2.50/SL2.50_11nt.jf >> $LOGDIR/SL2.50_11nt.log 2>&1 &

$JELFISH -p 48178 -k 23 -hash $HASHDIR/SolTub_3.0/SolTub_3.0_23nt.jf >> $LOGDIR/SolTub_3.0_23nt.log 2>&1 &
$JELFISH -p 47178 -k 15 -hash $HASHDIR/SolTub_3.0/SolTub_3.0_15nt.jf >> $LOGDIR/SolTub_3.0_15nt.log 2>&1 &
$JELFISH -p 46178 -k 11 -hash $HASHDIR/SolTub_3.0/SolTub_3.0_11nt.jf >> $LOGDIR/SolTub_3.0_11nt.log 2>&1 &

$JELFISH -p 48179 -k 23 -hash $HASHDIR/Sorbi1/Sorbi1_23nt.jf >> $LOGDIR/Sorbi1_23nt.log 2>&1 &
$JELFISH -p 47179 -k 15 -hash $HASHDIR/Sorbi1/Sorbi1_15nt.jf >> $LOGDIR/Sorbi1_15nt.log 2>&1 &
$JELFISH -p 46179 -k 11 -hash $HASHDIR/Sorbi1/Sorbi1_11nt.jf >> $LOGDIR/Sorbi1_11nt.log 2>&1 &

$JELFISH -p 48180 -k 23 -hash $HASHDIR/Thecc_20110822/Thecc_20110822_23nt.jf >> $LOGDIR/Thecc_20110822_23nt.log 2>&1 &
$JELFISH -p 47180 -k 15 -hash $HASHDIR/Thecc_20110822/Thecc_20110822_15nt.jf >> $LOGDIR/Thecc_20110822_15nt.log 2>&1 &
$JELFISH -p 46180 -k 11 -hash $HASHDIR/Thecc_20110822/Thecc_20110822_11nt.jf >> $LOGDIR/Thecc_20110822_11nt.log 2>&1 &

$JELFISH -p 48181 -k 23 -hash $HASHDIR/IWGSC1.0/IWGSC1.0_23nt.jf >> $LOGDIR/IWGSC1.0_23nt.log 2>&1 &
$JELFISH -p 47181 -k 15 -hash $HASHDIR/IWGSC1.0/IWGSC1.0_15nt.jf >> $LOGDIR/IWGSC1.0_15nt.log 2>&1 &
$JELFISH -p 46181 -k 11 -hash $HASHDIR/IWGSC1.0/IWGSC1.0_11nt.jf >> $LOGDIR/IWGSC1.0_11nt.log 2>&1 &

$JELFISH -p 48182 -k 23 -hash $HASHDIR/ASM34745v1/ASM34745v1_23nt.jf >> $LOGDIR/ASM34745v1_23nt.log 2>&1 &
$JELFISH -p 47182 -k 15 -hash $HASHDIR/ASM34745v1/ASM34745v1_15nt.jf >> $LOGDIR/ASM34745v1_15nt.log 2>&1 &
$JELFISH -p 46182 -k 11 -hash $HASHDIR/ASM34745v1/ASM34745v1_11nt.jf >> $LOGDIR/ASM34745v1_11nt.log 2>&1 &

$JELFISH -p 48183 -k 23 -hash $HASHDIR/IGGP_12x/IGGP_12x_23nt.jf >> $LOGDIR/IGGP_12x_23nt.log 2>&1 &
$JELFISH -p 47183 -k 15 -hash $HASHDIR/IGGP_12x/IGGP_12x_15nt.jf >> $LOGDIR/IGGP_12x_15nt.log 2>&1 &
$JELFISH -p 46183 -k 11 -hash $HASHDIR/IGGP_12x/IGGP_12x_11nt.jf >> $LOGDIR/IGGP_12x_11nt.log 2>&1 &

$JELFISH -p 48184 -k 23 -hash $HASHDIR/AGPv3/AGPv3_23nt.jf >> $LOGDIR/AGPv3_23nt.log 2>&1 &
$JELFISH -p 47184 -k 15 -hash $HASHDIR/AGPv3/AGPv3_15nt.jf >> $LOGDIR/AGPv3_15nt.log 2>&1 &
$JELFISH -p 46184 -k 11 -hash $HASHDIR/AGPv3/AGPv3_11nt.jf >> $LOGDIR/AGPv3_11nt.log 2>&1 &

$JELFISH -p 48185 -k 23 -hash $HASHDIR/Ppatens_251_v3/Ppatens_251_v3_23nt.jf >> $LOGDIR/Ppatens_251_v3_23nt.log 2>&1 &
$JELFISH -p 47185 -k 15 -hash $HASHDIR/Ppatens_251_v3/Ppatens_251_v3_15nt.jf >> $LOGDIR/Ppatens_251_v3_15nt.log 2>&1 &
$JELFISH -p 46185 -k 11 -hash $HASHDIR/Ppatens_251_v3/Ppatens_251_v3_11nt.jf >> $LOGDIR/Ppatens_251_v3_11nt.log 2>&1 &

$JELFISH -p 48186 -k 23 -hash $HASHDIR/Smoellendorffii_91_v1/Smoellendorffii_91_v1_23nt.jf >> $LOGDIR/Smoellendorffii_91_v1_23nt.log 2>&1 &
$JELFISH -p 47186 -k 15 -hash $HASHDIR/Smoellendorffii_91_v1/Smoellendorffii_91_v1_15nt.jf >> $LOGDIR/Smoellendorffii_91_v1_15nt.log 2>&1 &
$JELFISH -p 46186 -k 11 -hash $HASHDIR/Smoellendorffii_91_v1/Smoellendorffii_91_v1_11nt.jf >> $LOGDIR/Smoellendorffii_91_v1_11nt.log 2>&1 &

$JELFISH -p 48187 -k 23 -hash $HASHDIR/Creinhardtii_281_v5_5/Creinhardtii_281_v5_5_23nt.jf >> $LOGDIR/Creinhardtii_281_v5_5_23nt.log 2>&1 &
$JELFISH -p 47187 -k 15 -hash $HASHDIR/Creinhardtii_281_v5_5/Creinhardtii_281_v5_5_15nt.jf >> $LOGDIR/Creinhardtii_281_v5_5_15nt.log 2>&1 &
$JELFISH -p 46187 -k 11 -hash $HASHDIR/Creinhardtii_281_v5_5/Creinhardtii_281_v5_5_11nt.jf >> $LOGDIR/Creinhardtii_281_v5_5_11nt.log 2>&1 &

$JELFISH -p 48188 -k 23 -hash $HASHDIR/Olucimarinus_231_v2/Olucimarinus_231_v2_23nt.jf >> $LOGDIR/Olucimarinus_231_v2_23nt.log 2>&1 &
$JELFISH -p 47188 -k 15 -hash $HASHDIR/Olucimarinus_231_v2/Olucimarinus_231_v2_15nt.jf >> $LOGDIR/Olucimarinus_231_v2_15nt.log 2>&1 &
$JELFISH -p 46188 -k 11 -hash $HASHDIR/Olucimarinus_231_v2/Olucimarinus_231_v2_11nt.jf >> $LOGDIR/Olucimarinus_231_v2_11nt.log 2>&1 &

$JELFISH -p 48189 -k 23 -hash $HASHDIR/Cgrandiflora_v1/Cgrandiflora_v1_23nt.jf >> $LOGDIR/Cgrandiflora_v1_23nt.log 2>&1 &
$JELFISH -p 47189 -k 15 -hash $HASHDIR/Cgrandiflora_v1/Cgrandiflora_v1_15nt.jf >> $LOGDIR/Cgrandiflora_v1_15nt.log 2>&1 &
$JELFISH -p 46189 -k 11 -hash $HASHDIR/Cgrandiflora_v1/Cgrandiflora_v1_11nt.jf >> $LOGDIR/Cgrandiflora_v1_11nt.log 2>&1 &

$JELFISH -p 48190 -k 23 -hash $HASHDIR/Crubella_v1/Crubella_v1_23nt.jf >> $LOGDIR/Crubella_v1_23nt.log 2>&1 &
$JELFISH -p 47190 -k 15 -hash $HASHDIR/Crubella_v1/Crubella_v1_15nt.jf >> $LOGDIR/Crubella_v1_15nt.log 2>&1 &
$JELFISH -p 46190 -k 11 -hash $HASHDIR/Crubella_v1/Crubella_v1_11nt.jf >> $LOGDIR/Crubella_v1_11nt.log 2>&1 &

$JELFISH -p 48191 -k 23 -hash $HASHDIR/Cpapaya_r.Dec2008/Cpapaya_r.Dec2008_23nt.jf >> $LOGDIR/Cpapaya_r.Dec2008_23nt.log 2>&1 &
$JELFISH -p 47191 -k 15 -hash $HASHDIR/Cpapaya_r.Dec2008/Cpapaya_r.Dec2008_15nt.jf >> $LOGDIR/Cpapaya_r.Dec2008_15nt.log 2>&1 &
$JELFISH -p 46191 -k 11 -hash $HASHDIR/Cpapaya_r.Dec2008/Cpapaya_r.Dec2008_11nt.jf >> $LOGDIR/Cpapaya_r.Dec2008_11nt.log 2>&1 &

$JELFISH -p 48192 -k 23 -hash $HASHDIR/CsubellipsoideaC169_v2.0/CsubellipsoideaC169_v2.0_23nt.jf >> $LOGDIR/CsubellipsoideaC169_v2.0_23nt.log 2>&1 &
$JELFISH -p 47192 -k 15 -hash $HASHDIR/CsubellipsoideaC169_v2.0/CsubellipsoideaC169_v2.0_15nt.jf >> $LOGDIR/CsubellipsoideaC169_v2.0_15nt.log 2>&1 &
$JELFISH -p 46192 -k 11 -hash $HASHDIR/CsubellipsoideaC169_v2.0/CsubellipsoideaC169_v2.0_11nt.jf >> $LOGDIR/CsubellipsoideaC169_v2.0_11nt.log 2>&1 &

$JELFISH -p 48193 -k 23 -hash $HASHDIR/Csativus_v1/Csativus_v1_23nt.jf >> $LOGDIR/Csativus_v1_23nt.log 2>&1 &
$JELFISH -p 47193 -k 15 -hash $HASHDIR/Csativus_v1/Csativus_v1_15nt.jf >> $LOGDIR/Csativus_v1_15nt.log 2>&1 &
$JELFISH -p 46193 -k 11 -hash $HASHDIR/Csativus_v1/Csativus_v1_11nt.jf >> $LOGDIR/Csativus_v1_11nt.log 2>&1 &

$JELFISH -p 48194 -k 23 -hash $HASHDIR/Egrandis_v2.0/Egrandis_v2.0_23nt.jf >> $LOGDIR/Egrandis_v2.0_23nt.log 2>&1 &
$JELFISH -p 47194 -k 15 -hash $HASHDIR/Egrandis_v2.0/Egrandis_v2.0_15nt.jf >> $LOGDIR/Egrandis_v2.0_15nt.log 2>&1 &
$JELFISH -p 46194 -k 11 -hash $HASHDIR/Egrandis_v2.0/Egrandis_v2.0_11nt.jf >> $LOGDIR/Egrandis_v2.0_11nt.log 2>&1 &

$JELFISH -p 48195 -k 23 -hash $HASHDIR/Fvesca_v1.1/Fvesca_v1.1_23nt.jf >> $LOGDIR/Fvesca_v1.1_23nt.log 2>&1 &
$JELFISH -p 47195 -k 15 -hash $HASHDIR/Fvesca_v1.1/Fvesca_v1.1_15nt.jf >> $LOGDIR/Fvesca_v1.1_15nt.log 2>&1 &
$JELFISH -p 46195 -k 11 -hash $HASHDIR/Fvesca_v1.1/Fvesca_v1.1_11nt.jf >> $LOGDIR/Fvesca_v1.1_11nt.log 2>&1 &

$JELFISH -p 48196 -k 23 -hash $HASHDIR/Graimondii_v2.0/Graimondii_v2.0_23nt.jf >> $LOGDIR/Graimondii_v2.0_23nt.log 2>&1 &
$JELFISH -p 47196 -k 15 -hash $HASHDIR/Graimondii_v2.0/Graimondii_v2.0_15nt.jf >> $LOGDIR/Graimondii_v2.0_15nt.log 2>&1 &
$JELFISH -p 46196 -k 11 -hash $HASHDIR/Graimondii_v2.0/Graimondii_v2.0_11nt.jf >> $LOGDIR/Graimondii_v2.0_11nt.log 2>&1 &

$JELFISH -p 48197 -k 23 -hash $HASHDIR/Lusitatissimum_BGIv1.0/Lusitatissimum_BGIv1.0_23nt.jf >> $LOGDIR/Lusitatissimum_BGIv1.0_23nt.log 2>&1 &
$JELFISH -p 47197 -k 15 -hash $HASHDIR/Lusitatissimum_BGIv1.0/Lusitatissimum_BGIv1.0_15nt.jf >> $LOGDIR/Lusitatissimum_BGIv1.0_15nt.log 2>&1 &
$JELFISH -p 46197 -k 11 -hash $HASHDIR/Lusitatissimum_BGIv1.0/Lusitatissimum_BGIv1.0_11nt.jf >> $LOGDIR/Lusitatissimum_BGIv1.0_11nt.log 2>&1 &

$JELFISH -p 48198 -k 23 -hash $HASHDIR/Mdomestica_v1.0/Mdomestica_v1.0_23nt.jf >> $LOGDIR/Mdomestica_v1.0_23nt.log 2>&1 &
$JELFISH -p 47198 -k 15 -hash $HASHDIR/Mdomestica_v1.0/Mdomestica_v1.0_15nt.jf >> $LOGDIR/Mdomestica_v1.0_15nt.log 2>&1 &
$JELFISH -p 46198 -k 11 -hash $HASHDIR/Mdomestica_v1.0/Mdomestica_v1.0_11nt.jf >> $LOGDIR/Mdomestica_v1.0_11nt.log 2>&1 &

$JELFISH -p 48199 -k 23 -hash $HASHDIR/Mesculenta_v6/Mesculenta_v6_23nt.jf >> $LOGDIR/Mesculenta_v6_23nt.log 2>&1 &
$JELFISH -p 47199 -k 15 -hash $HASHDIR/Mesculenta_v6/Mesculenta_v6_15nt.jf >> $LOGDIR/Mesculenta_v6_15nt.log 2>&1 &
$JELFISH -p 46199 -k 11 -hash $HASHDIR/Mesculenta_v6/Mesculenta_v6_11nt.jf >> $LOGDIR/Mesculenta_v6_11nt.log 2>&1 &

$JELFISH -p 48200 -k 23 -hash $HASHDIR/MpusillaCCMP1545_v3.0/MpusillaCCMP1545_v3.0_23nt.jf >> $LOGDIR/MpusillaCCMP1545_v3.0_23nt.log 2>&1 &
$JELFISH -p 47200 -k 15 -hash $HASHDIR/MpusillaCCMP1545_v3.0/MpusillaCCMP1545_v3.0_15nt.jf >> $LOGDIR/MpusillaCCMP1545_v3.0_15nt.log 2>&1 &
$JELFISH -p 46200 -k 11 -hash $HASHDIR/MpusillaCCMP1545_v3.0/MpusillaCCMP1545_v3.0_11nt.jf >> $LOGDIR/MpusillaCCMP1545_v3.0_11nt.log 2>&1 &

$JELFISH -p 48201 -k 23 -hash $HASHDIR/MpusillaRCC299_v3.0/MpusillaRCC299_v3.0_23nt.jf >> $LOGDIR/MpusillaRCC299_v3.0_23nt.log 2>&1 &
$JELFISH -p 47201 -k 15 -hash $HASHDIR/MpusillaRCC299_v3.0/MpusillaRCC299_v3.0_15nt.jf >> $LOGDIR/MpusillaRCC299_v3.0_15nt.log 2>&1 &
$JELFISH -p 46201 -k 11 -hash $HASHDIR/MpusillaRCC299_v3.0/MpusillaRCC299_v3.0_11nt.jf >> $LOGDIR/MpusillaRCC299_v3.0_11nt.log 2>&1 &

$JELFISH -p 48202 -k 23 -hash $HASHDIR/Mguttatus_v2.0/Mguttatus_v2.0_23nt.jf >> $LOGDIR/Mguttatus_v2.0_23nt.log 2>&1 &
$JELFISH -p 47202 -k 15 -hash $HASHDIR/Mguttatus_v2.0/Mguttatus_v2.0_15nt.jf >> $LOGDIR/Mguttatus_v2.0_15nt.log 2>&1 &
$JELFISH -p 46202 -k 11 -hash $HASHDIR/Mguttatus_v2.0/Mguttatus_v2.0_11nt.jf >> $LOGDIR/Mguttatus_v2.0_11nt.log 2>&1 &

$JELFISH -p 48203 -k 23 -hash $HASHDIR/Ppersica_v2.0/Ppersica_v2.0_23nt.jf >> $LOGDIR/Ppersica_v2.0_23nt.log 2>&1 &
$JELFISH -p 47203 -k 15 -hash $HASHDIR/Ppersica_v2.0/Ppersica_v2.0_15nt.jf >> $LOGDIR/Ppersica_v2.0_15nt.log 2>&1 &
$JELFISH -p 46203 -k 11 -hash $HASHDIR/Ppersica_v2.0/Ppersica_v2.0_11nt.jf >> $LOGDIR/Ppersica_v2.0_11nt.log 2>&1 &

$JELFISH -p 48204 -k 23 -hash $HASHDIR/Rcommunis_TIGR.0.1/Rcommunis_TIGR.0.1_23nt.jf >> $LOGDIR/Rcommunis_TIGR.0.1_23nt.log 2>&1 &
$JELFISH -p 47204 -k 15 -hash $HASHDIR/Rcommunis_TIGR.0.1/Rcommunis_TIGR.0.1_15nt.jf >> $LOGDIR/Rcommunis_TIGR.0.1_15nt.log 2>&1 &
$JELFISH -p 46204 -k 11 -hash $HASHDIR/Rcommunis_TIGR.0.1/Rcommunis_TIGR.0.1_11nt.jf >> $LOGDIR/Rcommunis_TIGR.0.1_11nt.log 2>&1 &

$JELFISH -p 48205 -k 23 -hash $HASHDIR/Spolyrhiza_v1/Spolyrhiza_v1_23nt.jf >> $LOGDIR/Spolyrhiza_v1_23nt.log 2>&1 &
$JELFISH -p 47205 -k 15 -hash $HASHDIR/Spolyrhiza_v1/Spolyrhiza_v1_15nt.jf >> $LOGDIR/Spolyrhiza_v1_15nt.log 2>&1 &
$JELFISH -p 46205 -k 11 -hash $HASHDIR/Spolyrhiza_v1/Spolyrhiza_v1_11nt.jf >> $LOGDIR/Spolyrhiza_v1_11nt.log 2>&1 &

$JELFISH -p 48206 -k 23 -hash $HASHDIR/Vcarteri_v2/Vcarteri_v2_23nt.jf >> $LOGDIR/Vcarteri_v2_23nt.log 2>&1 &
$JELFISH -p 47206 -k 15 -hash $HASHDIR/Vcarteri_v2/Vcarteri_v2_15nt.jf >> $LOGDIR/Vcarteri_v2_15nt.log 2>&1 &
$JELFISH -p 46206 -k 11 -hash $HASHDIR/Vcarteri_v2/Vcarteri_v2_11nt.jf >> $LOGDIR/Vcarteri_v2_11nt.log 2>&1 &
