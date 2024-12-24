#!/bin/bash
logfile=$1

awk '{print $1}' "$logfile" | sort | uniq -c | sort -nr | head -10
