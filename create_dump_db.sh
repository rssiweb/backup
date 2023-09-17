#!/bin/bash
DIR="/home/worker/db-dumps"
FILE="$DIR/dump_$(date +%d-%m-%Y"_"%H_%M_%S).sql"
echo "creating new dump $FILE"
docker exec -t rssi_db_1 pg_dumpall -c -U web > $FILE
ls -ltrh $DIR
echo "created new dump"
