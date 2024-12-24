#!/bin/bash

sum=0

for a in "$@"; do
    if [ $a -gt 10 ];then
            sum=$((sum + a))
    fi
done

printf "%s\n" $sum



