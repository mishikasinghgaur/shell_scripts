#!/bin/bash
logfile=$1
split -b 100M "$logfile" "${logfile}_part_"
for file in ${logfile}_part_*; do
    gzip "$file
