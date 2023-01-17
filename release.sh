#
DSK=ClockSP5.ssd
BEEB=../MMB_Utils/beeb
BASICTOOL=../basictool/basictool
rm -f $DSK
echo 'CHAIN"ClockSP"' | tr '\012' '\015'  > '!BOOT'
$BASICTOOL -t ClockSP5.bas ClockSP5
$BEEB blank_ssd $DSK
$BEEB opt4 $DSK 3
$BEEB title $DSK "ClockSP5"
$BEEB putfile $DSK !BOOT
$BEEB putfile $DSK ClockSP5
rm '!BOOT'
rm ClockSP5