#!/bin/bash
services=("apache2" "mysql")

for service in "${services[@]}"; do
    if ! systemctl is-active --quiet "$service"; then
        echo "$service is down. Restarting..."
        systemctl restart "$service"
    else
        echo "$service is running."
    fi
done


#Service Monitoring: Restart Services if Down