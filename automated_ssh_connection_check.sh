#!/bin/bash
#Shell script to verify automated ssh connection
servers=("server1" "server2" "server3")

for server in "${servers[@]}"; do
    if ssh -q "$server" exit; then
        echo "Connection to $server successful"
    else
        echo "Connection to $server failed"
    fi
done


