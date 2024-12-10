#!bin/bash
num1=10
num2=20

sum=$((num1 + num2))

echo $sum

#Checking the Type of Data
#integer
num=123
if [[ $num =~ ^[0-9]+$ ]]; then
    echo "It's is an interger"
else
    echo "Not an integer"
fi