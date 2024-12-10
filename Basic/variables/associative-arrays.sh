#!/bin/bash

#Declare an associative array
declare -A capitals

capitals['India']="New Delhi"
capitals['England']="London"

#Access Value
echo ${capitals["India"]}
echo ${capitals[@]}