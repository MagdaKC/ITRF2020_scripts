#  RUN_SERIES_IERS_SLRF2020_7d+satIDir      


SCR_NAME=RUN_SERIES_IERS_SLRF2020_7d+satIDir_2024_02_06        
+ SCR_NAME=RUN_SERIES_IERS_SLRF2020_7d+satIDir_2024_02_06
SCR_PARM=5
+ SCR_PARM=5
SCR_LIST="CASE ETA_IN GROUP JOB_FILE RUN_NUMBER RUN_YEAR MDLS"
+ SCR_LIST='CASE ETA_IN GROUP JOB_FILE RUN_NUMBER RUN_YEAR MDLS'
SCR_VERS=240206.0

+ SCR_VERS=240206.0
SCR_DBG="#"
+ SCR_DBG='#'
export SCR_DBG

+ export SCR_DBG
#if [ `expr $#` -lt #240429 $SCR_PARM ]; then
#   echo "Usage: #240429 $SCR_NAME ${SCR_LIST}\007"
#   exit 101
#fi

Date=`date +%y%m%d`

date +%y%m%d
+ date +%y%m%d
+ Date=240429
DateTime=`date '+DATE: %m/%d/%y  TIME: %H:%M:%S'`

date '+DATE: %m/%d/%y  TIME: %H:%M:%S'
+ date '+DATE: %m/%d/%y  TIME: %H:%M:%S'
+ DateTime='DATE: 04/29/24  TIME: 07:51:49'
echo " # "
+ echo ' # '
 # 
echo " #  #240429 $SCR_NAME $* "
+ echo ' #  #240429 RUN_SERIES_IERS_SLRF2020_7d+satIDir_2024_02_06 DAILY YES OPS2020 . 180 '
 #  #240429 RUN_SERIES_IERS_SLRF2020_7d+satIDir_2024_02_06 DAILY YES OPS2020 . 180 
echo " # "
+ echo ' # '
 # 
echo " #  Version #240429 $SCR_VERS "
+ echo ' #  Version #240429 240206.0 '
 #  Version #240429 240206.0 
echo " # "
+ echo ' # '
 # 
echo " #  Run Date $DateTime "
+ echo ' #  Run Date DATE: 04/29/24  TIME: 07:51:49 '
 #  Run Date DATE: 04/29/24  TIME: 07:51:49 
echo " # "


+ echo ' # '
 # 
CASE=${1:-WEEKLY}
+ CASE=DAILY
ETA_IN=${2:-YES}
+ ETA_IN=YES
GROUP=${3:-REANAL14}
+ GROUP=OPS2020
JOB_FILE=${4:-}
+ JOB_FILE=.
SNX_VER=$5
+ SNX_VER=180
MAIN_PATH=/umbc/epavlis/data01/LOCAL/magdak
+ MAIN_PATH=/umbc/epavlis/data01/LOCAL/magdak
read NYEAR NDOY Date_NEW_ARC ARC < $MAIN_PATH/INFILES/INF_OPS_ITRF2020/ARC_SETUP_NEW.${CASE}_v${SNX_VER}
+ read NYEAR NDOY Date_NEW_ARC ARC
+ 0< /umbc/epavlis/data01/LOCAL/magdak/INFILES/INF_OPS_ITRF2020/ARC_SETUP_NEW.DAILY_v180
exec > /umbc/epavlis/data01/LOCAL/magdak/tmp/${SCR_NAME}.${CASE}_${ARC}_$Date.$$.log 2>&1

+ exec
+ 1> /umbc/epavlis/data01/LOCAL/magdak/tmp/RUN_SERIES_IERS_SLRF2020_7d+satIDir_2024_02_06.DAILY_w40421_240429.24183.log 2>& 1
