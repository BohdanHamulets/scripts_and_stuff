#!/bin/bash

while true
do
    echo `date` >> hermes_every_10min.log && top |grep hermes >> hermes_every_10min.log && echo "" >> hermes_every_10min.log
    sleep 2
done
