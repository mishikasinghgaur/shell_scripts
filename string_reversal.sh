#!/bin/bash
read -p "Enter a string: " str
len=${#str}

for ((i=$len-1; i>=0; i--)); do
    reverse="$reverse${str:i:1}"
done

echo "Reversed string: $reverse"
