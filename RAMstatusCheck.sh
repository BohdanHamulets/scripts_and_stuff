#!/bin/bash
while true
do
        echo `date` >> memLOG.txt && top -b -n1 |grep --line-buffered "KiB Mem" >> memLOG.txt
        # Use byoby
        sleep 1
done
