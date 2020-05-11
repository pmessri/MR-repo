#!/bin/bash

SCRIPT_PATH='/home/peter/Desktop/mm-inventory'

cd $SCRIPT_PATH 

DATETIME=`date +%Y-%m-%d-%H:%M:%S`
ROOTPATH=`pwd`
LOGFILE="$ROOTPATH/logs/$DATETIME.log"

echo "-----------------------------------------------------------------------------" >> $LOGFILE

./kill_chromedriver.sh 2>&1 | tee -a $LOGFILE

echo "" >> $LOGFILE
echo "-----------------------------------------------------------------------------" >> $LOGFILE
echo "" >> $LOGFILE

./cleanup_downloads.sh 2>&1 | tee -a $LOGFILE

echo "" >> $LOGFILE
echo "-----------------------------------------------------------------------------" >> $LOGFILE
echo "" >> $LOGFILE

./download_inventory.py 2>&1 | tee -a $LOGFILE

echo "" >> $LOGFILE
echo "-----------------------------------------------------------------------------" >> $LOGFILE
echo "" >> $LOGFILE

./inventory.py 2>&1 | tee -a $LOGFILE

echo "" >> $LOGFILE
echo "-----------------------------------------------------------------------------" >> $LOGFILE
echo "" >> $LOGFILE

cd $SCRIPT_PATH/cleansing

./analytics.py 2>&1 | tee -a $LOGFILE

echo "" >> $LOGFILE
echo "-----------------------------------------------------------------------------" >> $LOGFILE
echo "" >> $LOGFILE

./traits.py 2>&1 | tee -a $LOGFILE

echo "-EOF-------------------------------------------------------------------------" >> $LOGFILE

