#!/bin/bash

read -p "What is your age?: " age

[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"