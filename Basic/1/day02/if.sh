#!/bin/bash

read -p "Enter a fruit: " fruit

if [[ $fruit == "apple" ]];
then
    echo "Yes, This is $fruit"
else
    echo "No, This is not $fruit"
fi
