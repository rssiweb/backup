#!/bin/bash

LOG=$(cat /home/worker/autorestic.log)
DATE=$(date)
STATUS=$1
echo "sending logs"
printf "Subject: Backup $STATUS: $DATE:\n\n$LOG" |  ssmtp info@rssi.in
echo "sending logs done"
