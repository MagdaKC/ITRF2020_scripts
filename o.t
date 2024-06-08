set -xv


+ set -xv
#  RUN_STR

#

SCR_NAME=REPORT_BiAS_ALL
+ SCR_NAME=REPORT_BiAS_ALL
SCR_LIST="CASE ETA_IN"
+ SCR_LIST='CASE ETA_IN'
SCR_VERS=070928.0

+ SCR_VERS=070928.0
SCR_DBG="#"
+ SCR_DBG='#'
export SCR_DBG


+ export SCR_DBG
Date=`date +%y%m%d`

date +%y%m%d
+ date +%y%m%d
+ Date=231006
DateTime=`date '+DATE: %m/%d/%y  TIME: %H:%M:%S'`

date '+DATE: %m/%d/%y  TIME: %H:%M:%S'
+ date '+DATE: %m/%d/%y  TIME: %H:%M:%S'
+ DateTime='DATE: 10/06/23  TIME: 13:07:21'
echo " # "
+ echo ' # '
 # 
echo " #  $SCR_NAME $* "
+ echo ' #  REPORT_BiAS_ALL  '
 #  REPORT_BiAS_ALL  
echo " # "
+ echo ' # '
 # 
echo " #  Version $SCR_VERS "
+ echo ' #  Version 070928.0 '
 #  Version 070928.0 
echo " # "
+ echo ' # '
 # 
echo " #  Run Date $DateTime "
+ echo ' #  Run Date DATE: 10/06/23  TIME: 13:07:21 '
 #  Run Date DATE: 10/06/23  TIME: 13:07:21 
echo " # "
+ echo ' # '
 # 
CASE=DAILY
+ CASE=DAILY
ARC=w30927
+ ARC=w30927
MAIN_PATH=/umbc/epavlis/data01/LOCAL/magdak
+ MAIN_PATH=/umbc/epavlis/data01/LOCAL/magdak
diskC=$MAIN_PATH
+ diskC=/umbc/epavlis/data01/LOCAL/magdak
SNX_VER=180
+ SNX_VER=180
Date_ENDO_ARC=231005

+ Date_ENDO_ARC=231005
cp /$diskC/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/${ARC}_LEAS.txt test_ALL
+ cp //umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/w30927_LEAS.txt test_ALL
#CREAT files:
while read STAT_QC
do 
grep  --text "^$STAT_QC" test_ALL > test_ALL_1
grep --text -v -e "S1" -e  "A1" -e "E1" -e "E2" test_ALL_1 > test_ALL_2
cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/jcet.qc7day.${Date_ENDO_ARC}_${STAT_QC}.slr.v01.rpt
rm test_ALL_1 test_ALL_2


if [  -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/jcet.qc7day.${Date_ENDO_ARC}_${STAT_QC}.slr.v01.rpt  ]; then
mail -s "Report_BIAS_SLRF2020_$ARC for ${STAT_QC} " magdak@umbc.edu < /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/jcet.qc7day.${Date_ENDO_ARC}_${STAT_QC}.slr.v01.rpt
#mail -s "Report_BIAS_SLRF2020_$ARC for ${STAT_QC} " epavlis@umbc.edu < /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/jcet.qc7day.${Date_ENDO_ARC}_${STAT_QC}.slr.v01.rpt
else
rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/${CASE}/v${SNX_VER}/jcet.qc7day.${Date_ENDO_ARC}_${STAT_QC}.slr.v01.rpt
fi
done < $MAIN_PATH/INFILES/INF_OPS_ITRF2020/QC_STATION


+ 0< /umbc/epavlis/data01/LOCAL/magdak/INFILES/INF_OPS_ITRF2020/QC_STATION
+ read STAT_QC
+ grep --text ^18685901 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18685901.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18685901.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18685901.slr.v01.rpt
+ read STAT_QC
+ grep --text ^18799401 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18799401.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18799401.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18799401.slr.v01.rpt
+ read STAT_QC
+ grep --text ^18869601 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18869601.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18869601.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18869601.slr.v01.rpt
+ read STAT_QC
+ grep --text ^18879701 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18879701.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18879701.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_18879701.slr.v01.rpt
+ read STAT_QC
+ grep --text ^72496102 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_72496102.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_72496102.slr.v01.rpt ]
+ mail -s 'Report_BIAS_SLRF2020_w30927 for 72496102 ' magdak@umbc.edu
+ 0< /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_72496102.slr.v01.rpt
+ read STAT_QC
+ grep --text ^73942601 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73942601.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73942601.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73942601.slr.v01.rpt
+ read STAT_QC
+ grep --text ^73592601 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73592601.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73592601.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73592601.slr.v01.rpt
+ read STAT_QC
+ grep --text ^73956501 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73956501.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73956501.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_73956501.slr.v01.rpt
+ read STAT_QC
+ grep --text ^74072701 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_74072701.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_74072701.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_74072701.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78077501 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78077501.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78077501.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78077501.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78106801 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106801.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106801.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106801.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78106811 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106811.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106811.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106811.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78106821 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106821.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106821.slr.v01.rpt ]
+ mail -s 'Report_BIAS_SLRF2020_w30927 for 78106821 ' magdak@umbc.edu
+ 0< /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78106821.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78165202 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78165202.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78165202.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78165202.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78176201 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78176201.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78176201.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78176201.slr.v01.rpt
+ read STAT_QC
+ grep --text ^78658601 test_ALL
+ 1> test_ALL_1
+ grep --text -v -e S1 -e A1 -e E1 -e E2 test_ALL_1
+ 1> test_ALL_2
+ cp test_ALL_2 /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78658601.slr.v01.rpt
+ rm test_ALL_1 test_ALL_2
+ [ -s /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78658601.slr.v01.rpt ]
+ rm /umbc/epavlis/data01/LOCAL/magdak/MISSIONS/PPV/qc_report/DAILY/v180/jcet.qc7day.231005_78658601.slr.v01.rpt
+ read STAT_QC
exit 0

+ exit 0
