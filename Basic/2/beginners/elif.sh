#!/bin/bash

read -p "Enter Your country: " country

if [[ $country -eq "India" ]]; then
    echo "You are India"
elif [[ $country -eq "China" ]]; then
    echo "You are China"
else
    echo "You are Earth"
fi