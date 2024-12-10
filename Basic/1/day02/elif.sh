#!/bin/bash

read -p "Enter a percentage(%): " percentage

if [[ $percentage -ge 80 ]]; then
    echo "Great job!"
elif [[ $percentage -ge 80 ]]; then
    echo "Good job!"
else
    echo "You can do better!"
fi