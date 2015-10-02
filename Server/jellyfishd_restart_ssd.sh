#!/bin/bash

# kill current jellyfish
/backup/bin/grep_and_kill.pl '^approx.*jellyfishd.*pl'

# sleep...
/bin/sleep 3

# start jellyfish
JELFISH="/backup/bin/jellyfishd_ssd.pl"
HASHDIR="/SSD/jellyhash"

cd $HASHDIR/vicPac2/ ; $JELFISH -p 48008 -k 23 -hash vicPac2_23nt.jf >> vicPac2_23nt.log 2>&1 &
cd $HASHDIR/vicPac2/ ; $JELFISH -p 47008 -k 15 -hash vicPac2_15nt.jf >> vicPac2_15nt.log 2>&1 &
cd $HASHDIR/vicPac2/ ; $JELFISH -p 46008 -k 11 -hash vicPac2_11nt.jf >> vicPac2_11nt.log 2>&1 &

cd $HASHDIR/dasNov3/ ; $JELFISH -p 48009 -k 23 -hash dasNov3_23nt.jf >> dasNov3_23nt.log 2>&1 &
cd $HASHDIR/dasNov3/ ; $JELFISH -p 47009 -k 15 -hash dasNov3_15nt.jf >> dasNov3_15nt.log 2>&1 &
cd $HASHDIR/dasNov3/ ; $JELFISH -p 46009 -k 11 -hash dasNov3_11nt.jf >> dasNov3_11nt.log 2>&1 &

cd $HASHDIR/papAnu2/ ; $JELFISH -p 48010 -k 23 -hash papAnu2_23nt.jf >> papAnu2_23nt.log 2>&1 &
cd $HASHDIR/papAnu2/ ; $JELFISH -p 47010 -k 15 -hash papAnu2_15nt.jf >> papAnu2_15nt.log 2>&1 &
cd $HASHDIR/papAnu2/ ; $JELFISH -p 46010 -k 11 -hash papAnu2_11nt.jf >> papAnu2_11nt.log 2>&1 &

cd $HASHDIR/otoGar3/ ; $JELFISH -p 48011 -k 23 -hash otoGar3_23nt.jf >> otoGar3_23nt.log 2>&1 &
cd $HASHDIR/otoGar3/ ; $JELFISH -p 47011 -k 15 -hash otoGar3_15nt.jf >> otoGar3_15nt.log 2>&1 &
cd $HASHDIR/otoGar3/ ; $JELFISH -p 46011 -k 11 -hash otoGar3_11nt.jf >> otoGar3_11nt.log 2>&1 &

cd $HASHDIR/felCat5/ ; $JELFISH -p 48012 -k 23 -hash felCat5_23nt.jf >> felCat5_23nt.log 2>&1 &
cd $HASHDIR/felCat5/ ; $JELFISH -p 47012 -k 15 -hash felCat5_15nt.jf >> felCat5_15nt.log 2>&1 &
cd $HASHDIR/felCat5/ ; $JELFISH -p 46012 -k 11 -hash felCat5_11nt.jf >> felCat5_11nt.log 2>&1 &

cd $HASHDIR/panTro4/ ; $JELFISH -p 48013 -k 23 -hash panTro4_23nt.jf >> panTro4_23nt.log 2>&1 &
cd $HASHDIR/panTro4/ ; $JELFISH -p 47013 -k 15 -hash panTro4_15nt.jf >> panTro4_15nt.log 2>&1 &
cd $HASHDIR/panTro4/ ; $JELFISH -p 46013 -k 11 -hash panTro4_11nt.jf >> panTro4_11nt.log 2>&1 &

cd $HASHDIR/criGri1/ ; $JELFISH -p 48014 -k 23 -hash criGri1_23nt.jf >> criGri1_23nt.log 2>&1 &
cd $HASHDIR/criGri1/ ; $JELFISH -p 47014 -k 15 -hash criGri1_15nt.jf >> criGri1_15nt.log 2>&1 &
cd $HASHDIR/criGri1/ ; $JELFISH -p 46014 -k 11 -hash criGri1_11nt.jf >> criGri1_11nt.log 2>&1 &

cd $HASHDIR/bosTau8/ ; $JELFISH -p 48015 -k 23 -hash bosTau8_23nt.jf >> bosTau8_23nt.log 2>&1 &
cd $HASHDIR/bosTau8/ ; $JELFISH -p 47015 -k 15 -hash bosTau8_15nt.jf >> bosTau8_15nt.log 2>&1 &
cd $HASHDIR/bosTau8/ ; $JELFISH -p 46015 -k 11 -hash bosTau8_11nt.jf >> bosTau8_11nt.log 2>&1 &

cd $HASHDIR/canFam3/ ; $JELFISH -p 48016 -k 23 -hash canFam3_23nt.jf >> canFam3_23nt.log 2>&1 &
cd $HASHDIR/canFam3/ ; $JELFISH -p 47016 -k 15 -hash canFam3_15nt.jf >> canFam3_15nt.log 2>&1 &
cd $HASHDIR/canFam3/ ; $JELFISH -p 46016 -k 11 -hash canFam3_11nt.jf >> canFam3_11nt.log 2>&1 &

cd $HASHDIR/turTru2/ ; $JELFISH -p 48017 -k 23 -hash turTru2_23nt.jf >> turTru2_23nt.log 2>&1 &
cd $HASHDIR/turTru2/ ; $JELFISH -p 47017 -k 15 -hash turTru2_15nt.jf >> turTru2_15nt.log 2>&1 &
cd $HASHDIR/turTru2/ ; $JELFISH -p 46017 -k 11 -hash turTru2_11nt.jf >> turTru2_11nt.log 2>&1 &

cd $HASHDIR/loxAfr3/ ; $JELFISH -p 48018 -k 23 -hash loxAfr3_23nt.jf >> loxAfr3_23nt.log 2>&1 &
cd $HASHDIR/loxAfr3/ ; $JELFISH -p 47018 -k 15 -hash loxAfr3_15nt.jf >> loxAfr3_15nt.log 2>&1 &
cd $HASHDIR/loxAfr3/ ; $JELFISH -p 46018 -k 11 -hash loxAfr3_11nt.jf >> loxAfr3_11nt.log 2>&1 &

cd $HASHDIR/musFur1/ ; $JELFISH -p 48019 -k 23 -hash musFur1_23nt.jf >> musFur1_23nt.log 2>&1 &
cd $HASHDIR/musFur1/ ; $JELFISH -p 47019 -k 15 -hash musFur1_15nt.jf >> musFur1_15nt.log 2>&1 &
cd $HASHDIR/musFur1/ ; $JELFISH -p 46019 -k 11 -hash musFur1_11nt.jf >> musFur1_11nt.log 2>&1 &

cd $HASHDIR/nomLeu3/ ; $JELFISH -p 48020 -k 23 -hash nomLeu3_23nt.jf >> nomLeu3_23nt.log 2>&1 &
cd $HASHDIR/nomLeu3/ ; $JELFISH -p 47020 -k 15 -hash nomLeu3_15nt.jf >> nomLeu3_15nt.log 2>&1 &
cd $HASHDIR/nomLeu3/ ; $JELFISH -p 46020 -k 11 -hash nomLeu3_11nt.jf >> nomLeu3_11nt.log 2>&1 &

cd $HASHDIR/gorGor3/ ; $JELFISH -p 48021 -k 23 -hash gorGor3_23nt.jf >> gorGor3_23nt.log 2>&1 &
cd $HASHDIR/gorGor3/ ; $JELFISH -p 47021 -k 15 -hash gorGor3_15nt.jf >> gorGor3_15nt.log 2>&1 &
cd $HASHDIR/gorGor3/ ; $JELFISH -p 46021 -k 11 -hash gorGor3_11nt.jf >> gorGor3_11nt.log 2>&1 &

cd $HASHDIR/cavPor3/ ; $JELFISH -p 48022 -k 23 -hash cavPor3_23nt.jf >> cavPor3_23nt.log 2>&1 &
cd $HASHDIR/cavPor3/ ; $JELFISH -p 47022 -k 15 -hash cavPor3_15nt.jf >> cavPor3_15nt.log 2>&1 &
cd $HASHDIR/cavPor3/ ; $JELFISH -p 46022 -k 11 -hash cavPor3_11nt.jf >> cavPor3_11nt.log 2>&1 &

cd $HASHDIR/eriEur2/ ; $JELFISH -p 48023 -k 23 -hash eriEur2_23nt.jf >> eriEur2_23nt.log 2>&1 &
cd $HASHDIR/eriEur2/ ; $JELFISH -p 47023 -k 15 -hash eriEur2_15nt.jf >> eriEur2_15nt.log 2>&1 &
cd $HASHDIR/eriEur2/ ; $JELFISH -p 46023 -k 11 -hash eriEur2_11nt.jf >> eriEur2_11nt.log 2>&1 &

cd $HASHDIR/equCab2/ ; $JELFISH -p 48024 -k 23 -hash equCab2_23nt.jf >> equCab2_23nt.log 2>&1 &
cd $HASHDIR/equCab2/ ; $JELFISH -p 47024 -k 15 -hash equCab2_15nt.jf >> equCab2_15nt.log 2>&1 &
cd $HASHDIR/equCab2/ ; $JELFISH -p 46024 -k 11 -hash equCab2_11nt.jf >> equCab2_11nt.log 2>&1 &

cd $HASHDIR/dipOrd1/ ; $JELFISH -p 48025 -k 23 -hash dipOrd1_23nt.jf >> dipOrd1_23nt.log 2>&1 &
cd $HASHDIR/dipOrd1/ ; $JELFISH -p 47025 -k 15 -hash dipOrd1_15nt.jf >> dipOrd1_15nt.log 2>&1 &
cd $HASHDIR/dipOrd1/ ; $JELFISH -p 46025 -k 11 -hash dipOrd1_11nt.jf >> dipOrd1_11nt.log 2>&1 &

cd $HASHDIR/triMan1/ ; $JELFISH -p 48026 -k 23 -hash triMan1_23nt.jf >> triMan1_23nt.log 2>&1 &
cd $HASHDIR/triMan1/ ; $JELFISH -p 47026 -k 15 -hash triMan1_15nt.jf >> triMan1_15nt.log 2>&1 &
cd $HASHDIR/triMan1/ ; $JELFISH -p 46026 -k 11 -hash triMan1_11nt.jf >> triMan1_11nt.log 2>&1 &

cd $HASHDIR/pteVam1/ ; $JELFISH -p 48028 -k 23 -hash pteVam1_23nt.jf >> pteVam1_23nt.log 2>&1 &
cd $HASHDIR/pteVam1/ ; $JELFISH -p 47028 -k 15 -hash pteVam1_15nt.jf >> pteVam1_15nt.log 2>&1 &
cd $HASHDIR/pteVam1/ ; $JELFISH -p 46028 -k 11 -hash pteVam1_11nt.jf >> pteVam1_11nt.log 2>&1 &

cd $HASHDIR/myoLuc2/ ; $JELFISH -p 48029 -k 23 -hash myoLuc2_23nt.jf >> myoLuc2_23nt.log 2>&1 &
cd $HASHDIR/myoLuc2/ ; $JELFISH -p 47029 -k 15 -hash myoLuc2_15nt.jf >> myoLuc2_15nt.log 2>&1 &
cd $HASHDIR/myoLuc2/ ; $JELFISH -p 46029 -k 11 -hash myoLuc2_11nt.jf >> myoLuc2_11nt.log 2>&1 &

cd $HASHDIR/balAcu1/ ; $JELFISH -p 48030 -k 23 -hash balAcu1_23nt.jf >> balAcu1_23nt.log 2>&1 &
cd $HASHDIR/balAcu1/ ; $JELFISH -p 47030 -k 15 -hash balAcu1_15nt.jf >> balAcu1_15nt.log 2>&1 &
cd $HASHDIR/balAcu1/ ; $JELFISH -p 46030 -k 11 -hash balAcu1_11nt.jf >> balAcu1_11nt.log 2>&1 &

cd $HASHDIR/micMur1/ ; $JELFISH -p 48031 -k 23 -hash micMur1_23nt.jf >> micMur1_23nt.log 2>&1 &
cd $HASHDIR/micMur1/ ; $JELFISH -p 47031 -k 15 -hash micMur1_15nt.jf >> micMur1_15nt.log 2>&1 &
cd $HASHDIR/micMur1/ ; $JELFISH -p 46031 -k 11 -hash micMur1_11nt.jf >> micMur1_11nt.log 2>&1 &

cd $HASHDIR/hetGla2/ ; $JELFISH -p 48032 -k 23 -hash hetGla2_23nt.jf >> hetGla2_23nt.log 2>&1 &
cd $HASHDIR/hetGla2/ ; $JELFISH -p 47032 -k 15 -hash hetGla2_15nt.jf >> hetGla2_15nt.log 2>&1 &
cd $HASHDIR/hetGla2/ ; $JELFISH -p 46032 -k 11 -hash hetGla2_11nt.jf >> hetGla2_11nt.log 2>&1 &

cd $HASHDIR/monDom5/ ; $JELFISH -p 48033 -k 23 -hash monDom5_23nt.jf >> monDom5_23nt.log 2>&1 &
cd $HASHDIR/monDom5/ ; $JELFISH -p 47033 -k 15 -hash monDom5_15nt.jf >> monDom5_15nt.log 2>&1 &
cd $HASHDIR/monDom5/ ; $JELFISH -p 46033 -k 11 -hash monDom5_11nt.jf >> monDom5_11nt.log 2>&1 &

cd $HASHDIR/ponAbe2/ ; $JELFISH -p 48034 -k 23 -hash ponAbe2_23nt.jf >> ponAbe2_23nt.log 2>&1 &
cd $HASHDIR/ponAbe2/ ; $JELFISH -p 47034 -k 15 -hash ponAbe2_15nt.jf >> ponAbe2_15nt.log 2>&1 &
cd $HASHDIR/ponAbe2/ ; $JELFISH -p 46034 -k 11 -hash ponAbe2_11nt.jf >> ponAbe2_11nt.log 2>&1 &

cd $HASHDIR/ailMel1/ ; $JELFISH -p 48035 -k 23 -hash ailMel1_23nt.jf >> ailMel1_23nt.log 2>&1 &
cd $HASHDIR/ailMel1/ ; $JELFISH -p 47035 -k 15 -hash ailMel1_15nt.jf >> ailMel1_15nt.log 2>&1 &
cd $HASHDIR/ailMel1/ ; $JELFISH -p 46035 -k 11 -hash ailMel1_11nt.jf >> ailMel1_11nt.log 2>&1 &

cd $HASHDIR/ochPri3/ ; $JELFISH -p 48037 -k 23 -hash ochPri3_23nt.jf >> ochPri3_23nt.log 2>&1 &
cd $HASHDIR/ochPri3/ ; $JELFISH -p 47037 -k 15 -hash ochPri3_15nt.jf >> ochPri3_15nt.log 2>&1 &
cd $HASHDIR/ochPri3/ ; $JELFISH -p 46037 -k 11 -hash ochPri3_11nt.jf >> ochPri3_11nt.log 2>&1 &

cd $HASHDIR/ornAna1/ ; $JELFISH -p 48038 -k 23 -hash ornAna1_23nt.jf >> ornAna1_23nt.log 2>&1 &
cd $HASHDIR/ornAna1/ ; $JELFISH -p 47038 -k 15 -hash ornAna1_15nt.jf >> ornAna1_15nt.log 2>&1 &
cd $HASHDIR/ornAna1/ ; $JELFISH -p 46038 -k 11 -hash ornAna1_11nt.jf >> ornAna1_11nt.log 2>&1 &

cd $HASHDIR/oryCun2/ ; $JELFISH -p 48039 -k 23 -hash oryCun2_23nt.jf >> oryCun2_23nt.log 2>&1 &
cd $HASHDIR/oryCun2/ ; $JELFISH -p 47039 -k 15 -hash oryCun2_15nt.jf >> oryCun2_15nt.log 2>&1 &
cd $HASHDIR/oryCun2/ ; $JELFISH -p 46039 -k 11 -hash oryCun2_11nt.jf >> oryCun2_11nt.log 2>&1 &

cd $HASHDIR/rheMac3/ ; $JELFISH -p 48040 -k 23 -hash rheMac3_23nt.jf >> rheMac3_23nt.log 2>&1 &
cd $HASHDIR/rheMac3/ ; $JELFISH -p 47040 -k 15 -hash rheMac3_15nt.jf >> rheMac3_15nt.log 2>&1 &
cd $HASHDIR/rheMac3/ ; $JELFISH -p 46040 -k 11 -hash rheMac3_11nt.jf >> rheMac3_11nt.log 2>&1 &

cd $HASHDIR/proCap1/ ; $JELFISH -p 48041 -k 23 -hash proCap1_23nt.jf >> proCap1_23nt.log 2>&1 &
cd $HASHDIR/proCap1/ ; $JELFISH -p 47041 -k 15 -hash proCap1_15nt.jf >> proCap1_15nt.log 2>&1 &
cd $HASHDIR/proCap1/ ; $JELFISH -p 46041 -k 11 -hash proCap1_11nt.jf >> proCap1_11nt.log 2>&1 &

cd $HASHDIR/oviAri3/ ; $JELFISH -p 48042 -k 23 -hash oviAri3_23nt.jf >> oviAri3_23nt.log 2>&1 &
cd $HASHDIR/oviAri3/ ; $JELFISH -p 47042 -k 15 -hash oviAri3_15nt.jf >> oviAri3_15nt.log 2>&1 &
cd $HASHDIR/oviAri3/ ; $JELFISH -p 46042 -k 11 -hash oviAri3_11nt.jf >> oviAri3_11nt.log 2>&1 &

cd $HASHDIR/sorAra2/ ; $JELFISH -p 48043 -k 23 -hash sorAra2_23nt.jf >> sorAra2_23nt.log 2>&1 &
cd $HASHDIR/sorAra2/ ; $JELFISH -p 47043 -k 15 -hash sorAra2_15nt.jf >> sorAra2_15nt.log 2>&1 &
cd $HASHDIR/sorAra2/ ; $JELFISH -p 46043 -k 11 -hash sorAra2_11nt.jf >> sorAra2_11nt.log 2>&1 &

cd $HASHDIR/choHof1/ ; $JELFISH -p 48044 -k 23 -hash choHof1_23nt.jf >> choHof1_23nt.log 2>&1 &
cd $HASHDIR/choHof1/ ; $JELFISH -p 47044 -k 15 -hash choHof1_15nt.jf >> choHof1_15nt.log 2>&1 &
cd $HASHDIR/choHof1/ ; $JELFISH -p 46044 -k 11 -hash choHof1_11nt.jf >> choHof1_11nt.log 2>&1 &

cd $HASHDIR/speTri2/ ; $JELFISH -p 48045 -k 23 -hash speTri2_23nt.jf >> speTri2_23nt.log 2>&1 &
cd $HASHDIR/speTri2/ ; $JELFISH -p 47045 -k 15 -hash speTri2_15nt.jf >> speTri2_15nt.log 2>&1 &
cd $HASHDIR/speTri2/ ; $JELFISH -p 46045 -k 11 -hash speTri2_11nt.jf >> speTri2_11nt.log 2>&1 &

cd $HASHDIR/saiBol1/ ; $JELFISH -p 48046 -k 23 -hash saiBol1_23nt.jf >> saiBol1_23nt.log 2>&1 &
cd $HASHDIR/saiBol1/ ; $JELFISH -p 47046 -k 15 -hash saiBol1_15nt.jf >> saiBol1_15nt.log 2>&1 &
cd $HASHDIR/saiBol1/ ; $JELFISH -p 46046 -k 11 -hash saiBol1_11nt.jf >> saiBol1_11nt.log 2>&1 &

cd $HASHDIR/tarSyr1/ ; $JELFISH -p 48047 -k 23 -hash tarSyr1_23nt.jf >> tarSyr1_23nt.log 2>&1 &
cd $HASHDIR/tarSyr1/ ; $JELFISH -p 47047 -k 15 -hash tarSyr1_15nt.jf >> tarSyr1_15nt.log 2>&1 &
cd $HASHDIR/tarSyr1/ ; $JELFISH -p 46047 -k 11 -hash tarSyr1_11nt.jf >> tarSyr1_11nt.log 2>&1 &

cd $HASHDIR/sarHar1/ ; $JELFISH -p 48048 -k 23 -hash sarHar1_23nt.jf >> sarHar1_23nt.log 2>&1 &
cd $HASHDIR/sarHar1/ ; $JELFISH -p 47048 -k 15 -hash sarHar1_15nt.jf >> sarHar1_15nt.log 2>&1 &
cd $HASHDIR/sarHar1/ ; $JELFISH -p 46048 -k 11 -hash sarHar1_11nt.jf >> sarHar1_11nt.log 2>&1 &

cd $HASHDIR/echTel2/ ; $JELFISH -p 48049 -k 23 -hash echTel2_23nt.jf >> echTel2_23nt.log 2>&1 &
cd $HASHDIR/echTel2/ ; $JELFISH -p 47049 -k 15 -hash echTel2_15nt.jf >> echTel2_15nt.log 2>&1 &
cd $HASHDIR/echTel2/ ; $JELFISH -p 46049 -k 11 -hash echTel2_11nt.jf >> echTel2_11nt.log 2>&1 &

cd $HASHDIR/tupBel1/ ; $JELFISH -p 48050 -k 23 -hash tupBel1_23nt.jf >> tupBel1_23nt.log 2>&1 &
cd $HASHDIR/tupBel1/ ; $JELFISH -p 47050 -k 15 -hash tupBel1_15nt.jf >> tupBel1_15nt.log 2>&1 &
cd $HASHDIR/tupBel1/ ; $JELFISH -p 46050 -k 11 -hash tupBel1_11nt.jf >> tupBel1_11nt.log 2>&1 &

cd $HASHDIR/macEug2/ ; $JELFISH -p 48051 -k 23 -hash macEug2_23nt.jf >> macEug2_23nt.log 2>&1 &
cd $HASHDIR/macEug2/ ; $JELFISH -p 47051 -k 15 -hash macEug2_15nt.jf >> macEug2_15nt.log 2>&1 &
cd $HASHDIR/macEug2/ ; $JELFISH -p 46051 -k 11 -hash macEug2_11nt.jf >> macEug2_11nt.log 2>&1 &

cd $HASHDIR/cerSim1/ ; $JELFISH -p 48052 -k 23 -hash cerSim1_23nt.jf >> cerSim1_23nt.log 2>&1 &
cd $HASHDIR/cerSim1/ ; $JELFISH -p 47052 -k 15 -hash cerSim1_15nt.jf >> cerSim1_15nt.log 2>&1 &
cd $HASHDIR/cerSim1/ ; $JELFISH -p 46052 -k 11 -hash cerSim1_11nt.jf >> cerSim1_11nt.log 2>&1 &
