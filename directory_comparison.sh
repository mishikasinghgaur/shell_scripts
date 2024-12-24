#!/bin/bash
dir1=$1
dir2=$2

echo "Files in both directories:"
comm -12 <(ls "$dir1") <(ls "$dir2")

echo "Files only in $dir1:"
comm -23 <(ls "$dir1") <(ls "$dir2")

echo "Files only in $dir2:"
comm -13 <(ls "$dir1") <(ls "$dir2")
