#!/bin/bash

for i in 1 2 3
do
    echo $i
    continue
    echo "Remaining steps"
done

count=0
num=10

while [ $count -le $num ]
do
    echo "Breaking while loop now.. $count"
    if [[ $count -eq 5 ]]; then
        break
    fi
    
    let count++
done