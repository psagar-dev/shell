#!/bin/bash
name="Sagar Patel"
age=35
echo "What is your name: $name"
echo "What is your age: $age"

#Valid variable names
name=john
age_25=25
full_name="john Doe"

#Invalid Variable
<< invalidVariable
2age = 5
full-name="john Doe"
invalidVariable

#filename="testfile.txt"
#touch $filename

#Single Quotes
var1='Hello $name'
echo $var1

#multiple Quotes
var2="Hello $name"
echo $var2