#!/bin/bash
echo "Top 5 CPU consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

echo "Top 5 Memory consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6


#7. System Resource Usage: Top 5 CPU and Memory Processes
