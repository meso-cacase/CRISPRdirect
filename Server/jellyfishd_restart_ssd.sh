#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_ssd.pl"
HASHDIR="/SSD/jellyhash"
LOGDIR="/SSD/jellylog"

$JELFISH -p 48008 -k 23 -hash $HASHDIR/vicPac2/vicPac2_23nt.jf >> $LOGDIR/vicPac2_23nt.log 2>&1 &
$JELFISH -p 47008 -k 15 -hash $HASHDIR/vicPac2/vicPac2_15nt.jf >> $LOGDIR/vicPac2_15nt.log 2>&1 &
$JELFISH -p 46008 -k 11 -hash $HASHDIR/vicPac2/vicPac2_11nt.jf >> $LOGDIR/vicPac2_11nt.log 2>&1 &

$JELFISH -p 48009 -k 23 -hash $HASHDIR/dasNov3/dasNov3_23nt.jf >> $LOGDIR/dasNov3_23nt.log 2>&1 &
$JELFISH -p 47009 -k 15 -hash $HASHDIR/dasNov3/dasNov3_15nt.jf >> $LOGDIR/dasNov3_15nt.log 2>&1 &
$JELFISH -p 46009 -k 11 -hash $HASHDIR/dasNov3/dasNov3_11nt.jf >> $LOGDIR/dasNov3_11nt.log 2>&1 &

$JELFISH -p 48010 -k 23 -hash $HASHDIR/papAnu2/papAnu2_23nt.jf >> $LOGDIR/papAnu2_23nt.log 2>&1 &
$JELFISH -p 47010 -k 15 -hash $HASHDIR/papAnu2/papAnu2_15nt.jf >> $LOGDIR/papAnu2_15nt.log 2>&1 &
$JELFISH -p 46010 -k 11 -hash $HASHDIR/papAnu2/papAnu2_11nt.jf >> $LOGDIR/papAnu2_11nt.log 2>&1 &

$JELFISH -p 48011 -k 23 -hash $HASHDIR/otoGar3/otoGar3_23nt.jf >> $LOGDIR/otoGar3_23nt.log 2>&1 &
$JELFISH -p 47011 -k 15 -hash $HASHDIR/otoGar3/otoGar3_15nt.jf >> $LOGDIR/otoGar3_15nt.log 2>&1 &
$JELFISH -p 46011 -k 11 -hash $HASHDIR/otoGar3/otoGar3_11nt.jf >> $LOGDIR/otoGar3_11nt.log 2>&1 &

$JELFISH -p 48012 -k 23 -hash $HASHDIR/felCat5/felCat5_23nt.jf >> $LOGDIR/felCat5_23nt.log 2>&1 &
$JELFISH -p 47012 -k 15 -hash $HASHDIR/felCat5/felCat5_15nt.jf >> $LOGDIR/felCat5_15nt.log 2>&1 &
$JELFISH -p 46012 -k 11 -hash $HASHDIR/felCat5/felCat5_11nt.jf >> $LOGDIR/felCat5_11nt.log 2>&1 &

$JELFISH -p 48013 -k 23 -hash $HASHDIR/panTro4/panTro4_23nt.jf >> $LOGDIR/panTro4_23nt.log 2>&1 &
$JELFISH -p 47013 -k 15 -hash $HASHDIR/panTro4/panTro4_15nt.jf >> $LOGDIR/panTro4_15nt.log 2>&1 &
$JELFISH -p 46013 -k 11 -hash $HASHDIR/panTro4/panTro4_11nt.jf >> $LOGDIR/panTro4_11nt.log 2>&1 &

$JELFISH -p 48014 -k 23 -hash $HASHDIR/criGri1/criGri1_23nt.jf >> $LOGDIR/criGri1_23nt.log 2>&1 &
$JELFISH -p 47014 -k 15 -hash $HASHDIR/criGri1/criGri1_15nt.jf >> $LOGDIR/criGri1_15nt.log 2>&1 &
$JELFISH -p 46014 -k 11 -hash $HASHDIR/criGri1/criGri1_11nt.jf >> $LOGDIR/criGri1_11nt.log 2>&1 &

$JELFISH -p 48015 -k 23 -hash $HASHDIR/bosTau8/bosTau8_23nt.jf >> $LOGDIR/bosTau8_23nt.log 2>&1 &
$JELFISH -p 47015 -k 15 -hash $HASHDIR/bosTau8/bosTau8_15nt.jf >> $LOGDIR/bosTau8_15nt.log 2>&1 &
$JELFISH -p 46015 -k 11 -hash $HASHDIR/bosTau8/bosTau8_11nt.jf >> $LOGDIR/bosTau8_11nt.log 2>&1 &

$JELFISH -p 48016 -k 23 -hash $HASHDIR/canFam3/canFam3_23nt.jf >> $LOGDIR/canFam3_23nt.log 2>&1 &
$JELFISH -p 47016 -k 15 -hash $HASHDIR/canFam3/canFam3_15nt.jf >> $LOGDIR/canFam3_15nt.log 2>&1 &
$JELFISH -p 46016 -k 11 -hash $HASHDIR/canFam3/canFam3_11nt.jf >> $LOGDIR/canFam3_11nt.log 2>&1 &

$JELFISH -p 48017 -k 23 -hash $HASHDIR/turTru2/turTru2_23nt.jf >> $LOGDIR/turTru2_23nt.log 2>&1 &
$JELFISH -p 47017 -k 15 -hash $HASHDIR/turTru2/turTru2_15nt.jf >> $LOGDIR/turTru2_15nt.log 2>&1 &
$JELFISH -p 46017 -k 11 -hash $HASHDIR/turTru2/turTru2_11nt.jf >> $LOGDIR/turTru2_11nt.log 2>&1 &

$JELFISH -p 48018 -k 23 -hash $HASHDIR/loxAfr3/loxAfr3_23nt.jf >> $LOGDIR/loxAfr3_23nt.log 2>&1 &
$JELFISH -p 47018 -k 15 -hash $HASHDIR/loxAfr3/loxAfr3_15nt.jf >> $LOGDIR/loxAfr3_15nt.log 2>&1 &
$JELFISH -p 46018 -k 11 -hash $HASHDIR/loxAfr3/loxAfr3_11nt.jf >> $LOGDIR/loxAfr3_11nt.log 2>&1 &

$JELFISH -p 48019 -k 23 -hash $HASHDIR/musFur1/musFur1_23nt.jf >> $LOGDIR/musFur1_23nt.log 2>&1 &
$JELFISH -p 47019 -k 15 -hash $HASHDIR/musFur1/musFur1_15nt.jf >> $LOGDIR/musFur1_15nt.log 2>&1 &
$JELFISH -p 46019 -k 11 -hash $HASHDIR/musFur1/musFur1_11nt.jf >> $LOGDIR/musFur1_11nt.log 2>&1 &

$JELFISH -p 48020 -k 23 -hash $HASHDIR/nomLeu3/nomLeu3_23nt.jf >> $LOGDIR/nomLeu3_23nt.log 2>&1 &
$JELFISH -p 47020 -k 15 -hash $HASHDIR/nomLeu3/nomLeu3_15nt.jf >> $LOGDIR/nomLeu3_15nt.log 2>&1 &
$JELFISH -p 46020 -k 11 -hash $HASHDIR/nomLeu3/nomLeu3_11nt.jf >> $LOGDIR/nomLeu3_11nt.log 2>&1 &

$JELFISH -p 48021 -k 23 -hash $HASHDIR/gorGor3/gorGor3_23nt.jf >> $LOGDIR/gorGor3_23nt.log 2>&1 &
$JELFISH -p 47021 -k 15 -hash $HASHDIR/gorGor3/gorGor3_15nt.jf >> $LOGDIR/gorGor3_15nt.log 2>&1 &
$JELFISH -p 46021 -k 11 -hash $HASHDIR/gorGor3/gorGor3_11nt.jf >> $LOGDIR/gorGor3_11nt.log 2>&1 &

$JELFISH -p 48022 -k 23 -hash $HASHDIR/cavPor3/cavPor3_23nt.jf >> $LOGDIR/cavPor3_23nt.log 2>&1 &
$JELFISH -p 47022 -k 15 -hash $HASHDIR/cavPor3/cavPor3_15nt.jf >> $LOGDIR/cavPor3_15nt.log 2>&1 &
$JELFISH -p 46022 -k 11 -hash $HASHDIR/cavPor3/cavPor3_11nt.jf >> $LOGDIR/cavPor3_11nt.log 2>&1 &

$JELFISH -p 48023 -k 23 -hash $HASHDIR/eriEur2/eriEur2_23nt.jf >> $LOGDIR/eriEur2_23nt.log 2>&1 &
$JELFISH -p 47023 -k 15 -hash $HASHDIR/eriEur2/eriEur2_15nt.jf >> $LOGDIR/eriEur2_15nt.log 2>&1 &
$JELFISH -p 46023 -k 11 -hash $HASHDIR/eriEur2/eriEur2_11nt.jf >> $LOGDIR/eriEur2_11nt.log 2>&1 &

$JELFISH -p 48024 -k 23 -hash $HASHDIR/equCab2/equCab2_23nt.jf >> $LOGDIR/equCab2_23nt.log 2>&1 &
$JELFISH -p 47024 -k 15 -hash $HASHDIR/equCab2/equCab2_15nt.jf >> $LOGDIR/equCab2_15nt.log 2>&1 &
$JELFISH -p 46024 -k 11 -hash $HASHDIR/equCab2/equCab2_11nt.jf >> $LOGDIR/equCab2_11nt.log 2>&1 &

$JELFISH -p 48025 -k 23 -hash $HASHDIR/dipOrd1/dipOrd1_23nt.jf >> $LOGDIR/dipOrd1_23nt.log 2>&1 &
$JELFISH -p 47025 -k 15 -hash $HASHDIR/dipOrd1/dipOrd1_15nt.jf >> $LOGDIR/dipOrd1_15nt.log 2>&1 &
$JELFISH -p 46025 -k 11 -hash $HASHDIR/dipOrd1/dipOrd1_11nt.jf >> $LOGDIR/dipOrd1_11nt.log 2>&1 &

$JELFISH -p 48026 -k 23 -hash $HASHDIR/triMan1/triMan1_23nt.jf >> $LOGDIR/triMan1_23nt.log 2>&1 &
$JELFISH -p 47026 -k 15 -hash $HASHDIR/triMan1/triMan1_15nt.jf >> $LOGDIR/triMan1_15nt.log 2>&1 &
$JELFISH -p 46026 -k 11 -hash $HASHDIR/triMan1/triMan1_11nt.jf >> $LOGDIR/triMan1_11nt.log 2>&1 &

$JELFISH -p 48028 -k 23 -hash $HASHDIR/pteVam1/pteVam1_23nt.jf >> $LOGDIR/pteVam1_23nt.log 2>&1 &
$JELFISH -p 47028 -k 15 -hash $HASHDIR/pteVam1/pteVam1_15nt.jf >> $LOGDIR/pteVam1_15nt.log 2>&1 &
$JELFISH -p 46028 -k 11 -hash $HASHDIR/pteVam1/pteVam1_11nt.jf >> $LOGDIR/pteVam1_11nt.log 2>&1 &

$JELFISH -p 48029 -k 23 -hash $HASHDIR/myoLuc2/myoLuc2_23nt.jf >> $LOGDIR/myoLuc2_23nt.log 2>&1 &
$JELFISH -p 47029 -k 15 -hash $HASHDIR/myoLuc2/myoLuc2_15nt.jf >> $LOGDIR/myoLuc2_15nt.log 2>&1 &
$JELFISH -p 46029 -k 11 -hash $HASHDIR/myoLuc2/myoLuc2_11nt.jf >> $LOGDIR/myoLuc2_11nt.log 2>&1 &

$JELFISH -p 48030 -k 23 -hash $HASHDIR/balAcu1/balAcu1_23nt.jf >> $LOGDIR/balAcu1_23nt.log 2>&1 &
$JELFISH -p 47030 -k 15 -hash $HASHDIR/balAcu1/balAcu1_15nt.jf >> $LOGDIR/balAcu1_15nt.log 2>&1 &
$JELFISH -p 46030 -k 11 -hash $HASHDIR/balAcu1/balAcu1_11nt.jf >> $LOGDIR/balAcu1_11nt.log 2>&1 &

$JELFISH -p 48031 -k 23 -hash $HASHDIR/micMur1/micMur1_23nt.jf >> $LOGDIR/micMur1_23nt.log 2>&1 &
$JELFISH -p 47031 -k 15 -hash $HASHDIR/micMur1/micMur1_15nt.jf >> $LOGDIR/micMur1_15nt.log 2>&1 &
$JELFISH -p 46031 -k 11 -hash $HASHDIR/micMur1/micMur1_11nt.jf >> $LOGDIR/micMur1_11nt.log 2>&1 &

$JELFISH -p 48032 -k 23 -hash $HASHDIR/hetGla2/hetGla2_23nt.jf >> $LOGDIR/hetGla2_23nt.log 2>&1 &
$JELFISH -p 47032 -k 15 -hash $HASHDIR/hetGla2/hetGla2_15nt.jf >> $LOGDIR/hetGla2_15nt.log 2>&1 &
$JELFISH -p 46032 -k 11 -hash $HASHDIR/hetGla2/hetGla2_11nt.jf >> $LOGDIR/hetGla2_11nt.log 2>&1 &

$JELFISH -p 48033 -k 23 -hash $HASHDIR/monDom5/monDom5_23nt.jf >> $LOGDIR/monDom5_23nt.log 2>&1 &
$JELFISH -p 47033 -k 15 -hash $HASHDIR/monDom5/monDom5_15nt.jf >> $LOGDIR/monDom5_15nt.log 2>&1 &
$JELFISH -p 46033 -k 11 -hash $HASHDIR/monDom5/monDom5_11nt.jf >> $LOGDIR/monDom5_11nt.log 2>&1 &

$JELFISH -p 48034 -k 23 -hash $HASHDIR/ponAbe2/ponAbe2_23nt.jf >> $LOGDIR/ponAbe2_23nt.log 2>&1 &
$JELFISH -p 47034 -k 15 -hash $HASHDIR/ponAbe2/ponAbe2_15nt.jf >> $LOGDIR/ponAbe2_15nt.log 2>&1 &
$JELFISH -p 46034 -k 11 -hash $HASHDIR/ponAbe2/ponAbe2_11nt.jf >> $LOGDIR/ponAbe2_11nt.log 2>&1 &

$JELFISH -p 48035 -k 23 -hash $HASHDIR/ailMel1/ailMel1_23nt.jf >> $LOGDIR/ailMel1_23nt.log 2>&1 &
$JELFISH -p 47035 -k 15 -hash $HASHDIR/ailMel1/ailMel1_15nt.jf >> $LOGDIR/ailMel1_15nt.log 2>&1 &
$JELFISH -p 46035 -k 11 -hash $HASHDIR/ailMel1/ailMel1_11nt.jf >> $LOGDIR/ailMel1_11nt.log 2>&1 &

$JELFISH -p 48037 -k 23 -hash $HASHDIR/ochPri3/ochPri3_23nt.jf >> $LOGDIR/ochPri3_23nt.log 2>&1 &
$JELFISH -p 47037 -k 15 -hash $HASHDIR/ochPri3/ochPri3_15nt.jf >> $LOGDIR/ochPri3_15nt.log 2>&1 &
$JELFISH -p 46037 -k 11 -hash $HASHDIR/ochPri3/ochPri3_11nt.jf >> $LOGDIR/ochPri3_11nt.log 2>&1 &

$JELFISH -p 48038 -k 23 -hash $HASHDIR/ornAna1/ornAna1_23nt.jf >> $LOGDIR/ornAna1_23nt.log 2>&1 &
$JELFISH -p 47038 -k 15 -hash $HASHDIR/ornAna1/ornAna1_15nt.jf >> $LOGDIR/ornAna1_15nt.log 2>&1 &
$JELFISH -p 46038 -k 11 -hash $HASHDIR/ornAna1/ornAna1_11nt.jf >> $LOGDIR/ornAna1_11nt.log 2>&1 &

$JELFISH -p 48039 -k 23 -hash $HASHDIR/oryCun2/oryCun2_23nt.jf >> $LOGDIR/oryCun2_23nt.log 2>&1 &
$JELFISH -p 47039 -k 15 -hash $HASHDIR/oryCun2/oryCun2_15nt.jf >> $LOGDIR/oryCun2_15nt.log 2>&1 &
$JELFISH -p 46039 -k 11 -hash $HASHDIR/oryCun2/oryCun2_11nt.jf >> $LOGDIR/oryCun2_11nt.log 2>&1 &

$JELFISH -p 48040 -k 23 -hash $HASHDIR/rheMac3/rheMac3_23nt.jf >> $LOGDIR/rheMac3_23nt.log 2>&1 &
$JELFISH -p 47040 -k 15 -hash $HASHDIR/rheMac3/rheMac3_15nt.jf >> $LOGDIR/rheMac3_15nt.log 2>&1 &
$JELFISH -p 46040 -k 11 -hash $HASHDIR/rheMac3/rheMac3_11nt.jf >> $LOGDIR/rheMac3_11nt.log 2>&1 &

$JELFISH -p 48041 -k 23 -hash $HASHDIR/proCap1/proCap1_23nt.jf >> $LOGDIR/proCap1_23nt.log 2>&1 &
$JELFISH -p 47041 -k 15 -hash $HASHDIR/proCap1/proCap1_15nt.jf >> $LOGDIR/proCap1_15nt.log 2>&1 &
$JELFISH -p 46041 -k 11 -hash $HASHDIR/proCap1/proCap1_11nt.jf >> $LOGDIR/proCap1_11nt.log 2>&1 &

$JELFISH -p 48042 -k 23 -hash $HASHDIR/oviAri3/oviAri3_23nt.jf >> $LOGDIR/oviAri3_23nt.log 2>&1 &
$JELFISH -p 47042 -k 15 -hash $HASHDIR/oviAri3/oviAri3_15nt.jf >> $LOGDIR/oviAri3_15nt.log 2>&1 &
$JELFISH -p 46042 -k 11 -hash $HASHDIR/oviAri3/oviAri3_11nt.jf >> $LOGDIR/oviAri3_11nt.log 2>&1 &

$JELFISH -p 48043 -k 23 -hash $HASHDIR/sorAra2/sorAra2_23nt.jf >> $LOGDIR/sorAra2_23nt.log 2>&1 &
$JELFISH -p 47043 -k 15 -hash $HASHDIR/sorAra2/sorAra2_15nt.jf >> $LOGDIR/sorAra2_15nt.log 2>&1 &
$JELFISH -p 46043 -k 11 -hash $HASHDIR/sorAra2/sorAra2_11nt.jf >> $LOGDIR/sorAra2_11nt.log 2>&1 &

$JELFISH -p 48044 -k 23 -hash $HASHDIR/choHof1/choHof1_23nt.jf >> $LOGDIR/choHof1_23nt.log 2>&1 &
$JELFISH -p 47044 -k 15 -hash $HASHDIR/choHof1/choHof1_15nt.jf >> $LOGDIR/choHof1_15nt.log 2>&1 &
$JELFISH -p 46044 -k 11 -hash $HASHDIR/choHof1/choHof1_11nt.jf >> $LOGDIR/choHof1_11nt.log 2>&1 &

$JELFISH -p 48045 -k 23 -hash $HASHDIR/speTri2/speTri2_23nt.jf >> $LOGDIR/speTri2_23nt.log 2>&1 &
$JELFISH -p 47045 -k 15 -hash $HASHDIR/speTri2/speTri2_15nt.jf >> $LOGDIR/speTri2_15nt.log 2>&1 &
$JELFISH -p 46045 -k 11 -hash $HASHDIR/speTri2/speTri2_11nt.jf >> $LOGDIR/speTri2_11nt.log 2>&1 &

$JELFISH -p 48046 -k 23 -hash $HASHDIR/saiBol1/saiBol1_23nt.jf >> $LOGDIR/saiBol1_23nt.log 2>&1 &
$JELFISH -p 47046 -k 15 -hash $HASHDIR/saiBol1/saiBol1_15nt.jf >> $LOGDIR/saiBol1_15nt.log 2>&1 &
$JELFISH -p 46046 -k 11 -hash $HASHDIR/saiBol1/saiBol1_11nt.jf >> $LOGDIR/saiBol1_11nt.log 2>&1 &

$JELFISH -p 48047 -k 23 -hash $HASHDIR/tarSyr1/tarSyr1_23nt.jf >> $LOGDIR/tarSyr1_23nt.log 2>&1 &
$JELFISH -p 47047 -k 15 -hash $HASHDIR/tarSyr1/tarSyr1_15nt.jf >> $LOGDIR/tarSyr1_15nt.log 2>&1 &
$JELFISH -p 46047 -k 11 -hash $HASHDIR/tarSyr1/tarSyr1_11nt.jf >> $LOGDIR/tarSyr1_11nt.log 2>&1 &

$JELFISH -p 48048 -k 23 -hash $HASHDIR/sarHar1/sarHar1_23nt.jf >> $LOGDIR/sarHar1_23nt.log 2>&1 &
$JELFISH -p 47048 -k 15 -hash $HASHDIR/sarHar1/sarHar1_15nt.jf >> $LOGDIR/sarHar1_15nt.log 2>&1 &
$JELFISH -p 46048 -k 11 -hash $HASHDIR/sarHar1/sarHar1_11nt.jf >> $LOGDIR/sarHar1_11nt.log 2>&1 &

$JELFISH -p 48049 -k 23 -hash $HASHDIR/echTel2/echTel2_23nt.jf >> $LOGDIR/echTel2_23nt.log 2>&1 &
$JELFISH -p 47049 -k 15 -hash $HASHDIR/echTel2/echTel2_15nt.jf >> $LOGDIR/echTel2_15nt.log 2>&1 &
$JELFISH -p 46049 -k 11 -hash $HASHDIR/echTel2/echTel2_11nt.jf >> $LOGDIR/echTel2_11nt.log 2>&1 &

$JELFISH -p 48050 -k 23 -hash $HASHDIR/tupBel1/tupBel1_23nt.jf >> $LOGDIR/tupBel1_23nt.log 2>&1 &
$JELFISH -p 47050 -k 15 -hash $HASHDIR/tupBel1/tupBel1_15nt.jf >> $LOGDIR/tupBel1_15nt.log 2>&1 &
$JELFISH -p 46050 -k 11 -hash $HASHDIR/tupBel1/tupBel1_11nt.jf >> $LOGDIR/tupBel1_11nt.log 2>&1 &

$JELFISH -p 48051 -k 23 -hash $HASHDIR/macEug2/macEug2_23nt.jf >> $LOGDIR/macEug2_23nt.log 2>&1 &
$JELFISH -p 47051 -k 15 -hash $HASHDIR/macEug2/macEug2_15nt.jf >> $LOGDIR/macEug2_15nt.log 2>&1 &
$JELFISH -p 46051 -k 11 -hash $HASHDIR/macEug2/macEug2_11nt.jf >> $LOGDIR/macEug2_11nt.log 2>&1 &

$JELFISH -p 48052 -k 23 -hash $HASHDIR/cerSim1/cerSim1_23nt.jf >> $LOGDIR/cerSim1_23nt.log 2>&1 &
$JELFISH -p 47052 -k 15 -hash $HASHDIR/cerSim1/cerSim1_15nt.jf >> $LOGDIR/cerSim1_15nt.log 2>&1 &
$JELFISH -p 46052 -k 11 -hash $HASHDIR/cerSim1/cerSim1_11nt.jf >> $LOGDIR/cerSim1_11nt.log 2>&1 &
