#!/bin/bash
pattern=$1
file=$2

grep "$pattern" "$file"
