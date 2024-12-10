#!/bin/bash

#Declare and assign values
fruits=("Apple" "Banana" "cherry")

#Access Array element
echo ${fruits[0]}

#Print All Element
echo ${fruits[@]}

#Check if the variable is an array
if [[ $(declare -p fruits 2>/dev/null) =~ "declare -a" ]]; then
    echo "It's an indexed array."
fi

