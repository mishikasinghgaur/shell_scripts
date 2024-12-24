#1. File Manipulation: Count Lines, Words, and Characters Without Using wc Command


#!/bin/bash
file=$1
lines=0
words=0
chars=0

while IFS= read -r line; do
    lines=$((lines+1))
    words=$((words + $(echo "$line" | wc -w)))
    chars=$((chars + ${#line}))
done < "$file"

echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"



