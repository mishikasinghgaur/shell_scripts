#! /bin/bash

ips=("192.32.43.78" "192.34.56.67" "8.8.8.8")


for ip in "${ips[@]}"; do

    ping -c 3 $ip | grep "time=" | awk '{print $7}' | cut -d "=" -f2 

done



#12. Network Latency Check: Ping and Log Response Times

