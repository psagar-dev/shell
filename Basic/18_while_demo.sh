#!/bin/bash
#set -x #this is meaing for debuging every line

count=0
num=10

while [[ $count -le $num ]]
do
    echo "Number are $count"
    let count++
done