#!/bin/bash

num1=10.5
num2=20.3

sum=$(echo "$num1 + $num2" | bc)
echo $sum

#Check if the variable holds a float
num=10.2

if [[ $num =~ ^[0-9]+\.[0-9]+$ ]]; then
    echo "It's a floating-point number."
else
    echo "Not a floating-point number"
fi