#!/bin/bash

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

if [ "$usage" -gt 90 ]; then
    echo "Disk usage is at $usage%. Please take action." | mail -s "Disk Usage Alert" admin@example.com
fi


#Disk Usage Alert: Send Email if Usage Exceeds 90%