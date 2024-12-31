#!/bin/bash

# Declare an associative array
declare -A myArray
myArray=( [name]=Sagar [age]=30 [city]=Ahmedabad )

echo "Name is ${myArray[name]} and age is ${myArray[age]}"
echo "My City is ${myArray[city]}"
