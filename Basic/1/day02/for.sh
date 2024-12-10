#!/bin/bash

#This is for loop

<< Task
    1 argument is which is folder name
    2 is start range
    3 is end range
Task

for ((i = $2; i <= $3; i++))
do
    mkdir $1"_"$i
done
