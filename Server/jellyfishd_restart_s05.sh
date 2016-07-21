#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_s00.pl"
HASHDIR="/ssd/jellyhash"
LOGDIR="/ssd/jellylog"

$JELFISH -p 48098 -hash $HASHDIR/OryAfe1.0/*.jf >> $LOGDIR/OryAfe1.0.log 2>&1 &
$JELFISH -p 48099 -hash $HASHDIR/PoeFor_5.1.2/*.jf >> $LOGDIR/PoeFor_5.1.2.log 2>&1 &
$JELFISH -p 48100 -hash $HASHDIR/CSAV2.0/*.jf >> $LOGDIR/CSAV2.0.log 2>&1 &
$JELFISH -p 48101 -hash $HASHDIR/AstMex102/*.jf >> $LOGDIR/AstMex102.log 2>&1 &
$JELFISH -p 48102 -hash $HASHDIR/PelSin_1.0/*.jf >> $LOGDIR/PelSin_1.0.log 2>&1 &
$JELFISH -p 48103 -hash $HASHDIR/MacFas5.0/*.jf >> $LOGDIR/MacFas5.0.log 2>&1 &
$JELFISH -p 48104 -hash $HASHDIR/BGI_duck_1.0/*.jf >> $LOGDIR/BGI_duck_1.0.log 2>&1 &
$JELFISH -p 48105 -hash $HASHDIR/FicAlb_1.4/*.jf >> $LOGDIR/FicAlb_1.4.log 2>&1 &
$JELFISH -p 48106 -hash $HASHDIR/Pham/*.jf >> $LOGDIR/Pham.log 2>&1 &
$JELFISH -p 48107 -hash $HASHDIR/Xipmac4.4.2/*.jf >> $LOGDIR/Xipmac4.4.2.log 2>&1 &
$JELFISH -p 48108 -hash $HASHDIR/MicOch1.0/*.jf >> $LOGDIR/MicOch1.0.log 2>&1 &
$JELFISH -p 48109 -hash $HASHDIR/PhyMac_2.0.2/*.jf >> $LOGDIR/PhyMac_2.0.2.log 2>&1 &
$JELFISH -p 48110 -hash $HASHDIR/LepOcu1/*.jf >> $LOGDIR/LepOcu1.log 2>&1 &
$JELFISH -p 48111 -hash $HASHDIR/ChlSab1.1/*.jf >> $LOGDIR/ChlSab1.1.log 2>&1 &
$JELFISH -p 48112 -hash $HASHDIR/Acyr_2.0/*.jf >> $LOGDIR/Acyr_2.0.log 2>&1 &
$JELFISH -p 48113 -hash $HASHDIR/AaegL3/*.jf >> $LOGDIR/AaegL3.log 2>&1 &
$JELFISH -p 48114 -hash $HASHDIR/Aqu1/*.jf >> $LOGDIR/Aqu1.log 2>&1 &
$JELFISH -p 48115 -hash $HASHDIR/AdarC3/*.jf >> $LOGDIR/AdarC3.log 2>&1 &
$JELFISH -p 48116 -hash $HASHDIR/Attacep1.0/*.jf >> $LOGDIR/Attacep1.0.log 2>&1 &
$JELFISH -p 48117 -hash $HASHDIR/ASM15162v1/*.jf >> $LOGDIR/ASM15162v1.log 2>&1 &
$JELFISH -p 48118 -hash $HASHDIR/B_malayi_3.0/*.jf >> $LOGDIR/B_malayi_3.0.log 2>&1 &
$JELFISH -p 48119 -hash $HASHDIR/Capte_v1.0/*.jf >> $LOGDIR/Capte_v1.0.log 2>&1 &
$JELFISH -p 48120 -hash $HASHDIR/oyster_v9/*.jf >> $LOGDIR/oyster_v9.log 2>&1 &
$JELFISH -p 48121 -hash $HASHDIR/CpipJ2/*.jf >> $LOGDIR/CpipJ2.log 2>&1 &
$JELFISH -p 48122 -hash $HASHDIR/DanPle_1.0/*.jf >> $LOGDIR/DanPle_1.0.log 2>&1 &
$JELFISH -p 48123 -hash $HASHDIR/Dappu_V1.0/*.jf >> $LOGDIR/Dappu_V1.0.log 2>&1 &
$JELFISH -p 48124 -hash $HASHDIR/DendPond_1.0/*.jf >> $LOGDIR/DendPond_1.0.log 2>&1 &
$JELFISH -p 48125 -hash $HASHDIR/dwil_caf1/*.jf >> $LOGDIR/dwil_caf1.log 2>&1 &
$JELFISH -p 48126 -hash $HASHDIR/Hmel1/*.jf >> $LOGDIR/Hmel1.log 2>&1 &
$JELFISH -p 48127 -hash $HASHDIR/Helro1/*.jf >> $LOGDIR/Helro1.log 2>&1 &
$JELFISH -p 48128 -hash $HASHDIR/IscaW1/*.jf >> $LOGDIR/IscaW1.log 2>&1 &
$JELFISH -p 48129 -hash $HASHDIR/Loa_loa_V3/*.jf >> $LOGDIR/Loa_loa_V3.log 2>&1 &
$JELFISH -p 48130 -hash $HASHDIR/Lotgi1/*.jf >> $LOGDIR/Lotgi1.log 2>&1 &
$JELFISH -p 48131 -hash $HASHDIR/Msca1/*.jf >> $LOGDIR/Msca1.log 2>&1 &
$JELFISH -p 48132 -hash $HASHDIR/MelCinx1.0/*.jf >> $LOGDIR/MelCinx1.0.log 2>&1 &
$JELFISH -p 48133 -hash $HASHDIR/MneLei/*.jf >> $LOGDIR/MneLei.log 2>&1 &
$JELFISH -p 48134 -hash $HASHDIR/Nvit_2.1/*.jf >> $LOGDIR/Nvit_2.1.log 2>&1 &
$JELFISH -p 48135 -hash $HASHDIR/ASM20922v1/*.jf >> $LOGDIR/ASM20922v1.log 2>&1 &
$JELFISH -p 48136 -hash $HASHDIR/Cameroon_v3/*.jf >> $LOGDIR/Cameroon_v3.log 2>&1 &
$JELFISH -p 48137 -hash $HASHDIR/PhumU2/*.jf >> $LOGDIR/PhumU2.log 2>&1 &
$JELFISH -p 48138 -hash $HASHDIR/RproC1/*.jf >> $LOGDIR/RproC1.log 2>&1 &
$JELFISH -p 48139 -hash $HASHDIR/ASM23792v2/*.jf >> $LOGDIR/ASM23792v2.log 2>&1 &
$JELFISH -p 48140 -hash $HASHDIR/Si_gnG/*.jf >> $LOGDIR/Si_gnG.log 2>&1 &
$JELFISH -p 48141 -hash $HASHDIR/Smar1/*.jf >> $LOGDIR/Smar1.log 2>&1 &
$JELFISH -p 48142 -hash $HASHDIR/ASM23943v1/*.jf >> $LOGDIR/ASM23943v1.log 2>&1 &
$JELFISH -p 48143 -hash $HASHDIR/Tcas3/*.jf >> $LOGDIR/Tcas3.log 2>&1 &
$JELFISH -p 48144 -hash $HASHDIR/Tspiralis1/*.jf >> $LOGDIR/Tspiralis1.log 2>&1 &
$JELFISH -p 48145 -hash $HASHDIR/ASM15027v1/*.jf >> $LOGDIR/ASM15027v1.log 2>&1 &
$JELFISH -p 48146 -hash $HASHDIR/ZooNev1.0/*.jf >> $LOGDIR/ZooNev1.0.log 2>&1 &
$JELFISH -p 48147 -hash $HASHDIR/ASM34733v1/*.jf >> $LOGDIR/ASM34733v1.log 2>&1 &
$JELFISH -p 48148 -hash $HASHDIR/AMTR1.0/*.jf >> $LOGDIR/AMTR1.0.log 2>&1 &
$JELFISH -p 48149 -hash $HASHDIR/Araly_v.1.0/*.jf >> $LOGDIR/Araly_v.1.0.log 2>&1 &
$JELFISH -p 48150 -hash $HASHDIR/TAIR10_en/*.jf >> $LOGDIR/TAIR10_en.log 2>&1 &
$JELFISH -p 48151 -hash $HASHDIR/Bradi_v1.0/*.jf >> $LOGDIR/Bradi_v1.0.log 2>&1 &
$JELFISH -p 48152 -hash $HASHDIR/Braol_v2.1/*.jf >> $LOGDIR/Braol_v2.1.log 2>&1 &
$JELFISH -p 48153 -hash $HASHDIR/IVFCAASv1/*.jf >> $LOGDIR/IVFCAASv1.log 2>&1 &
$JELFISH -p 48154 -hash $HASHDIR/Chlre_v3.1/*.jf >> $LOGDIR/Chlre_v3.1.log 2>&1 &
$JELFISH -p 48155 -hash $HASHDIR/ASM9120v1/*.jf >> $LOGDIR/ASM9120v1.log 2>&1 &
$JELFISH -p 48156 -hash $HASHDIR/Soybn_V1.0/*.jf >> $LOGDIR/Soybn_V1.0.log 2>&1 &
$JELFISH -p 48157 -hash $HASHDIR/Horvu_v1/*.jf >> $LOGDIR/Horvu_v1.log 2>&1 &
$JELFISH -p 48158 -hash $HASHDIR/Lperr_V1.4/*.jf >> $LOGDIR/Lperr_V1.4.log 2>&1 &
$JELFISH -p 48159 -hash $HASHDIR/MedtrA17_4.0/*.jf >> $LOGDIR/MedtrA17_4.0.log 2>&1 &
$JELFISH -p 48160 -hash $HASHDIR/MA1/*.jf >> $LOGDIR/MA1.log 2>&1 &
$JELFISH -p 48161 -hash $HASHDIR/Obart_v1.0/*.jf >> $LOGDIR/Obart_v1.0.log 2>&1 &
$JELFISH -p 48162 -hash $HASHDIR/Orybr_v1.4b/*.jf >> $LOGDIR/Orybr_v1.4b.log 2>&1 &
$JELFISH -p 48163 -hash $HASHDIR/AGI1.1/*.jf >> $LOGDIR/AGI1.1.log 2>&1 &
$JELFISH -p 48164 -hash $HASHDIR/Orygl/*.jf >> $LOGDIR/Orygl.log 2>&1 &
$JELFISH -p 48165 -hash $HASHDIR/Orylo_v0117/*.jf >> $LOGDIR/Orylo_v0117.log 2>&1 &
$JELFISH -p 48166 -hash $HASHDIR/Oryme_v1.3/*.jf >> $LOGDIR/Oryme_v1.3.log 2>&1 &
$JELFISH -p 48167 -hash $HASHDIR/Oryni/*.jf >> $LOGDIR/Oryni.log 2>&1 &
$JELFISH -p 48168 -hash $HASHDIR/Orypu/*.jf >> $LOGDIR/Orypu.log 2>&1 &
$JELFISH -p 48169 -hash $HASHDIR/PRJEB4137/*.jf >> $LOGDIR/PRJEB4137.log 2>&1 &
$JELFISH -p 48170 -hash $HASHDIR/ASM465v1/*.jf >> $LOGDIR/ASM465v1.log 2>&1 &
$JELFISH -p 48171 -hash $HASHDIR/ASM9206v1/*.jf >> $LOGDIR/ASM9206v1.log 2>&1 &
$JELFISH -p 48172 -hash $HASHDIR/ASM242v1/*.jf >> $LOGDIR/ASM242v1.log 2>&1 &
$JELFISH -p 48173 -hash $HASHDIR/Poptr_JGI2.0/*.jf >> $LOGDIR/Poptr_JGI2.0.log 2>&1 &
$JELFISH -p 48174 -hash $HASHDIR/Prupe1_0/*.jf >> $LOGDIR/Prupe1_0.log 2>&1 &
$JELFISH -p 48175 -hash $HASHDIR/Selml_v1.0/*.jf >> $LOGDIR/Selml_v1.0.log 2>&1 &
$JELFISH -p 48176 -hash $HASHDIR/Setit_JGIv2.0/*.jf >> $LOGDIR/Setit_JGIv2.0.log 2>&1 &
$JELFISH -p 48177 -hash $HASHDIR/SL2.50/*.jf >> $LOGDIR/SL2.50.log 2>&1 &
$JELFISH -p 48178 -hash $HASHDIR/SolTub_3.0/*.jf >> $LOGDIR/SolTub_3.0.log 2>&1 &
$JELFISH -p 48179 -hash $HASHDIR/Sorbi1/*.jf >> $LOGDIR/Sorbi1.log 2>&1 &
$JELFISH -p 48180 -hash $HASHDIR/Thecc_20110822/*.jf >> $LOGDIR/Thecc_20110822.log 2>&1 &
$JELFISH -p 48181 -hash $HASHDIR/IWGSC1.0/*.jf >> $LOGDIR/IWGSC1.0.log 2>&1 &
$JELFISH -p 48182 -hash $HASHDIR/ASM34745v1/*.jf >> $LOGDIR/ASM34745v1.log 2>&1 &
$JELFISH -p 48183 -hash $HASHDIR/IGGP_12x/*.jf >> $LOGDIR/IGGP_12x.log 2>&1 &
$JELFISH -p 48184 -hash $HASHDIR/AGPv3/*.jf >> $LOGDIR/AGPv3.log 2>&1 &
$JELFISH -p 48185 -hash $HASHDIR/Ppatens_251_v3/*.jf >> $LOGDIR/Ppatens_251_v3.log 2>&1 &
$JELFISH -p 48186 -hash $HASHDIR/Smoellendorffii_91_v1/*.jf >> $LOGDIR/Smoellendorffii_91_v1.log 2>&1 &
$JELFISH -p 48187 -hash $HASHDIR/Creinhardtii_281_v5_5/*.jf >> $LOGDIR/Creinhardtii_281_v5_5.log 2>&1 &
$JELFISH -p 48188 -hash $HASHDIR/Olucimarinus_231_v2/*.jf >> $LOGDIR/Olucimarinus_231_v2.log 2>&1 &
$JELFISH -p 48189 -hash $HASHDIR/Cgrandiflora_v1/*.jf >> $LOGDIR/Cgrandiflora_v1.log 2>&1 &
$JELFISH -p 48190 -hash $HASHDIR/Crubella_v1/*.jf >> $LOGDIR/Crubella_v1.log 2>&1 &
$JELFISH -p 48191 -hash $HASHDIR/Cpapaya_r.Dec2008/*.jf >> $LOGDIR/Cpapaya_r.Dec2008.log 2>&1 &
$JELFISH -p 48192 -hash $HASHDIR/CsubellipsoideaC169_v2.0/*.jf >> $LOGDIR/CsubellipsoideaC169_v2.0.log 2>&1 &
$JELFISH -p 48193 -hash $HASHDIR/Csativus_v1/*.jf >> $LOGDIR/Csativus_v1.log 2>&1 &
$JELFISH -p 48194 -hash $HASHDIR/Egrandis_v2.0/*.jf >> $LOGDIR/Egrandis_v2.0.log 2>&1 &
$JELFISH -p 48195 -hash $HASHDIR/Fvesca_v1.1/*.jf >> $LOGDIR/Fvesca_v1.1.log 2>&1 &
$JELFISH -p 48196 -hash $HASHDIR/Graimondii_v2.0/*.jf >> $LOGDIR/Graimondii_v2.0.log 2>&1 &
$JELFISH -p 48197 -hash $HASHDIR/Lusitatissimum_BGIv1.0/*.jf >> $LOGDIR/Lusitatissimum_BGIv1.0.log 2>&1 &
$JELFISH -p 48198 -hash $HASHDIR/Mdomestica_v1.0/*.jf >> $LOGDIR/Mdomestica_v1.0.log 2>&1 &
$JELFISH -p 48199 -hash $HASHDIR/Mesculenta_v6/*.jf >> $LOGDIR/Mesculenta_v6.log 2>&1 &
$JELFISH -p 48200 -hash $HASHDIR/MpusillaCCMP1545_v3.0/*.jf >> $LOGDIR/MpusillaCCMP1545_v3.0.log 2>&1 &
$JELFISH -p 48201 -hash $HASHDIR/MpusillaRCC299_v3.0/*.jf >> $LOGDIR/MpusillaRCC299_v3.0.log 2>&1 &
$JELFISH -p 48202 -hash $HASHDIR/Mguttatus_v2.0/*.jf >> $LOGDIR/Mguttatus_v2.0.log 2>&1 &
$JELFISH -p 48203 -hash $HASHDIR/Ppersica_v2.0/*.jf >> $LOGDIR/Ppersica_v2.0.log 2>&1 &
$JELFISH -p 48204 -hash $HASHDIR/Rcommunis_TIGR.0.1/*.jf >> $LOGDIR/Rcommunis_TIGR.0.1.log 2>&1 &
$JELFISH -p 48205 -hash $HASHDIR/Spolyrhiza_v1/*.jf >> $LOGDIR/Spolyrhiza_v1.log 2>&1 &
$JELFISH -p 48206 -hash $HASHDIR/Vcarteri_v2/*.jf >> $LOGDIR/Vcarteri_v2.log 2>&1 &
