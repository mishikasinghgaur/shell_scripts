#!/bin/bash
while true; do
    cpu_usage=$(mpstat 1 1 | awk '/all/ {print 100 - $13}')
    if (( $(echo "$cpu_usage > 80" | bc -l) )); then
        top_pid=$(ps -eo pid,%cpu --sort=-%cpu | head -2 | tail -1 | awk '{print $1}')
        echo "High CPU usage detected. Killing process $top_pid"
        kill -9 "$top_pid"
    fi
    sleep 300
done


#High CPU Usage Troubleshooting: Kill High CPU Processs