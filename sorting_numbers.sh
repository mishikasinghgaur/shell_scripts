#!/bin/bash
read -p "Enter numbers separated by space: " -a numbers

for ((i=0; i<${#numbers[@]}-1; i++)); do
    for ((j=i+1; j<${#numbers[@]}; j++)); do
        if [ "${numbers[i]}" -gt "${numbers[j]}" ]; then
            temp=${numbers[i]}
            numbers[i]=${numbers[j]}
            numbers[j]=$temp
        fi
    done
done

echo "Sorted numbers: ${numbers[@]}"
