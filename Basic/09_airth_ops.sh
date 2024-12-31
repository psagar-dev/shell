#!/bin/bash

#Maths Calculate
x=10
y=2

let mul=$x*$y

let sum=$x+$y

echo "Multiplication using let ===> $mul"
echo "Adition using let ===> $sum"
echo "Substraction is $(($x-$y))"
