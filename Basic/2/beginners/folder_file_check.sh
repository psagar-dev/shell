#!/bin/bash

# File Check
if [[ -f elif.sh ]]; then
    echo "This file already exists"
fi

if [[ ! -f elif1.sh ]]; then
    echo "This file dose not exists"
fi

#Folder Check
if [[ -d demo ]]; then
    echo "This folder already exists"
fi

if [[ ! -d demo_test ]]; then
    echo "This folder dose not exists"
fi
