#2. Process Monitoring: Restart If Process Not Running


#!/bin/bash
process_name=$1

if ! pgrep "$process_name" > /dev/null; then
    echo "$(date): $process_name not running. Restarting..."
    # Assuming you have a service or command to restart
    systemctl restart "$process_name"
else
    echo "$process_name is running."
fi


