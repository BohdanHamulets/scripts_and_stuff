#!/bin/csh

#### Script that finds error messages from log files #####################
find /data/pub/ \( -name "*.current" -or -name "*.s" \) > /tmp/logfiles.list && find /data/log/ \( -name "*.current" -or -name "*.s" \) >> /tmp/logfiles.list

clear
echo -e "\nFollowing files  have the pattern - failure"
cat /tmp/logfiles.list|xargs fgrep -iwc  -e "failure"|grep -v "0"

echo -e "\nFollowing files  have the pattern - exception"
cat /tmp/logfiles.list|xargs fgrep -iwc  -e "*exceptions.*"|grep -v "0"
cat /tmp/logfiles.list|xargs fgrep -iwc  -e "*Exception*"|grep -v "0"
cat /tmp/logfiles.list|xargs fgrep -iwc  -e "exception"|grep -v "0"

echo -e "\nFollowing files  have the pattern - ERROR"
cat /tmp/logfiles.list|xargs fgrep -iwc -e "Error"|grep -v "0"

echo -e "\nFollowing files  have the pattern - Critical"
cat /tmp/logfiles.list|xargs fgrep -iwc -e "Critical"|grep -v "0"

echo -e "\nFollowing files  have the pattern - Warning"
cat /tmp/logfiles.list|xargs fgrep -iwc -e "Warning"|grep -v "0"


echo -e "\nFollowing files  have the pattern - Application Fault"
cat /tmp/logfiles.list|xargs fgrep -iwc   -e "application fault"|grep -v "0"
cat /tmp/logfiles.list|xargs fgrep -iwc   -e "appfault"|grep -v "0"


echo -e "\nFollowing files  have the pattern - Traceback"
cat /tmp/logfiles.list|xargs fgrep -iwc   -e "Traceback"|grep -v "0"
cat /tmp/logfiles.list|xargs fgrep -iwc   -e "Traceback"|grep -v "0"

echo -e "\n***COREDUMPS CREATED !!!!! *****  "
find  /data/cores/ -name "*.core*" -print | grep -v "0"

echo -e "\n"

rm -rf /tmp/logfiles.list

exit



