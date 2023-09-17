#!/bin/bash

DIR="/home/worker/db-dumps"
echo "clearing $DIR"
rm $DIR/*.sql
rm $DIR/*.pgdump
echo "cleanup done"
