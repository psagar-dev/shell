#!/bin/bash

read -p "What is your age?: " age
read -p "What is your nationality: " country

#&& (Operater)
#|| (Operater)
if [[ $age -ge 18 || $country == "India" ]]; then
    echo "You can vote"
else
    echo "You can't vote"
fi