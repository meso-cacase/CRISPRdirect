#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_ssd.pl"
HASHDIR="/SSD/jellyhash"
LOGDIR="/SSD/jellylog"

$JELFISH -p 48008 -hash $HASHDIR/vicPac2/*.jf >> $LOGDIR/vicPac2.log 2>&1 &
$JELFISH -p 48009 -hash $HASHDIR/dasNov3/*.jf >> $LOGDIR/dasNov3.log 2>&1 &
$JELFISH -p 48010 -hash $HASHDIR/papAnu2/*.jf >> $LOGDIR/papAnu2.log 2>&1 &
$JELFISH -p 48011 -hash $HASHDIR/otoGar3/*.jf >> $LOGDIR/otoGar3.log 2>&1 &
$JELFISH -p 48012 -hash $HASHDIR/felCat5/*.jf >> $LOGDIR/felCat5.log 2>&1 &
$JELFISH -p 48013 -hash $HASHDIR/panTro4/*.jf >> $LOGDIR/panTro4.log 2>&1 &
$JELFISH -p 48014 -hash $HASHDIR/criGri1/*.jf >> $LOGDIR/criGri1.log 2>&1 &
$JELFISH -p 48015 -hash $HASHDIR/bosTau8/*.jf >> $LOGDIR/bosTau8.log 2>&1 &
$JELFISH -p 48016 -hash $HASHDIR/canFam3/*.jf >> $LOGDIR/canFam3.log 2>&1 &
$JELFISH -p 48017 -hash $HASHDIR/turTru2/*.jf >> $LOGDIR/turTru2.log 2>&1 &
$JELFISH -p 48018 -hash $HASHDIR/loxAfr3/*.jf >> $LOGDIR/loxAfr3.log 2>&1 &
$JELFISH -p 48019 -hash $HASHDIR/musFur1/*.jf >> $LOGDIR/musFur1.log 2>&1 &
$JELFISH -p 48020 -hash $HASHDIR/nomLeu3/*.jf >> $LOGDIR/nomLeu3.log 2>&1 &
$JELFISH -p 48021 -hash $HASHDIR/gorGor3/*.jf >> $LOGDIR/gorGor3.log 2>&1 &
$JELFISH -p 48022 -hash $HASHDIR/cavPor3/*.jf >> $LOGDIR/cavPor3.log 2>&1 &
$JELFISH -p 48023 -hash $HASHDIR/eriEur2/*.jf >> $LOGDIR/eriEur2.log 2>&1 &
$JELFISH -p 48024 -hash $HASHDIR/equCab2/*.jf >> $LOGDIR/equCab2.log 2>&1 &
$JELFISH -p 48025 -hash $HASHDIR/dipOrd1/*.jf >> $LOGDIR/dipOrd1.log 2>&1 &
$JELFISH -p 48026 -hash $HASHDIR/triMan1/*.jf >> $LOGDIR/triMan1.log 2>&1 &
$JELFISH -p 48028 -hash $HASHDIR/pteVam1/*.jf >> $LOGDIR/pteVam1.log 2>&1 &
$JELFISH -p 48029 -hash $HASHDIR/myoLuc2/*.jf >> $LOGDIR/myoLuc2.log 2>&1 &
$JELFISH -p 48030 -hash $HASHDIR/balAcu1/*.jf >> $LOGDIR/balAcu1.log 2>&1 &
$JELFISH -p 48031 -hash $HASHDIR/micMur1/*.jf >> $LOGDIR/micMur1.log 2>&1 &
$JELFISH -p 48032 -hash $HASHDIR/hetGla2/*.jf >> $LOGDIR/hetGla2.log 2>&1 &
$JELFISH -p 48033 -hash $HASHDIR/monDom5/*.jf >> $LOGDIR/monDom5.log 2>&1 &
$JELFISH -p 48034 -hash $HASHDIR/ponAbe2/*.jf >> $LOGDIR/ponAbe2.log 2>&1 &
$JELFISH -p 48035 -hash $HASHDIR/ailMel1/*.jf >> $LOGDIR/ailMel1.log 2>&1 &
$JELFISH -p 48037 -hash $HASHDIR/ochPri3/*.jf >> $LOGDIR/ochPri3.log 2>&1 &
$JELFISH -p 48038 -hash $HASHDIR/ornAna1/*.jf >> $LOGDIR/ornAna1.log 2>&1 &
$JELFISH -p 48039 -hash $HASHDIR/oryCun2/*.jf >> $LOGDIR/oryCun2.log 2>&1 &
$JELFISH -p 48040 -hash $HASHDIR/rheMac3/*.jf >> $LOGDIR/rheMac3.log 2>&1 &
$JELFISH -p 48041 -hash $HASHDIR/proCap1/*.jf >> $LOGDIR/proCap1.log 2>&1 &
$JELFISH -p 48042 -hash $HASHDIR/oviAri3/*.jf >> $LOGDIR/oviAri3.log 2>&1 &
$JELFISH -p 48043 -hash $HASHDIR/sorAra2/*.jf >> $LOGDIR/sorAra2.log 2>&1 &
$JELFISH -p 48044 -hash $HASHDIR/choHof1/*.jf >> $LOGDIR/choHof1.log 2>&1 &
$JELFISH -p 48045 -hash $HASHDIR/speTri2/*.jf >> $LOGDIR/speTri2.log 2>&1 &
$JELFISH -p 48046 -hash $HASHDIR/saiBol1/*.jf >> $LOGDIR/saiBol1.log 2>&1 &
$JELFISH -p 48047 -hash $HASHDIR/tarSyr1/*.jf >> $LOGDIR/tarSyr1.log 2>&1 &
$JELFISH -p 48048 -hash $HASHDIR/sarHar1/*.jf >> $LOGDIR/sarHar1.log 2>&1 &
$JELFISH -p 48049 -hash $HASHDIR/echTel2/*.jf >> $LOGDIR/echTel2.log 2>&1 &
$JELFISH -p 48050 -hash $HASHDIR/tupBel1/*.jf >> $LOGDIR/tupBel1.log 2>&1 &
$JELFISH -p 48051 -hash $HASHDIR/macEug2/*.jf >> $LOGDIR/macEug2.log 2>&1 &
$JELFISH -p 48052 -hash $HASHDIR/cerSim1/*.jf >> $LOGDIR/cerSim1.log 2>&1 &
$JELFISH -p 48230 -hash $HASHDIR/ASM644v2/*.jf >> $LOGDIR/ASM644v2.log 2>&1 &
$JELFISH -p 48231 -hash $HASHDIR/ASM251v1/*.jf >> $LOGDIR/ASM251v1.log 2>&1 &
$JELFISH -p 48232 -hash $HASHDIR/ASM252v1/*.jf >> $LOGDIR/ASM252v1.log 2>&1 &
$JELFISH -p 48233 -hash $HASHDIR/RR/*.jf >> $LOGDIR/RR.log 2>&1 &
$JELFISH -p 48234 -hash $HASHDIR/BX/*.jf >> $LOGDIR/BX.log 2>&1 &
$JELFISH -p 48235 -hash $HASHDIR/RHOziaDV1.0/*.jf >> $LOGDIR/RHOziaDV1.0.log 2>&1 &
$JELFISH -p 48236 -hash $HASHDIR/Tetth/*.jf >> $LOGDIR/Tetth.log 2>&1 &
$JELFISH -p 48237 -hash $HASHDIR/Tetbo/*.jf >> $LOGDIR/Tetbo.log 2>&1 &
$JELFISH -p 48238 -hash $HASHDIR/Tetel/*.jf >> $LOGDIR/Tetel.log 2>&1 &
$JELFISH -p 48239 -hash $HASHDIR/Tetma/*.jf >> $LOGDIR/Tetma.log 2>&1 &
