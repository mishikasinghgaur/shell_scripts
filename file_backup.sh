#!/bin/bash
source_dir=$1
backup_dir=$2

find "$source_dir" -type f -mtime -1 -exec cp {} "$backup_dir" \;


#File Backup: Files Modified in Last 24 Hours