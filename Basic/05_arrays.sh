#!/bin/bash

#Array
myArray=( 1 20 34 Hello "Hey Trushal!")

echo "All the values in array are ${myArray[*]}"
echo "Value in 3rd index ${myArray[3]}"

#How to find number of values in array
echo "No. of values, Length of an array is ${#myArray[*]}"

# Range of value get
echo "Value from index 2-3 ${myArray[*]:2:3}"

#Updating Our Array with new values
myArray+=( New 30 40 )

echo "Values of new array are ${myArray[*]}"