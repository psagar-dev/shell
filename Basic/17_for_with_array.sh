#!/bin/bash

myArray=( 1 2 3 Hello Hi )
# echo "${myArray[@]}"

# First Way
for item in ${myArray[@]}
do
    echo $item
done

length=${#myArray[@]}
#Second Way
for ((i=0; i<length; i++))
do
    echo "Second Way is $i: ${myArray[$i]}"
done