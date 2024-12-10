#!/bin/bash

addNumber() {
    sum=$(($1 + $2))
    echo "Sum of $1 and $2 is $sum"
}

read -p "Enter is first number: " first
read -p "Enter is second number: " second

addNumber $first $second