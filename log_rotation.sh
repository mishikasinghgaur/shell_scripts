#!/bin/bash
log_dir=$1

# Rotate logs
find "$log_dir" -type f -name "*.log" -exec mv {} {}.old \;

# Compress rotated logs
find "$log_dir" -type f -name "*.old" -exec gzip {} \;

# Delete logs older than 7 days
find "$log_dir" -type f -name "*.gz" -mtime +7 -delete


#11. Log Rotation: Rotate, Compress, and Delete Logs Older Than 7 Day