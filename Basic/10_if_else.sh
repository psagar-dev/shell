#!/bin/bash

read -p "Enter you age: " age

if [ $age -ge 18 ]; then
    echo "you can vote"
else
    echo "you can't vote"
fi