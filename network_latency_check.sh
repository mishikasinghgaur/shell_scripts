#!/bin/bash
ips=("192.168.1.1" "8.8.8.8" "8.8.4.4")

for ip in "${ips[@]}"; do
    ping -c 3 "$ip" | grep 'time=' | awk '{print $7}' | cut -d'=' -f2
done

#12. Network Latency Check: Ping and Log Response Times