#!/bin/bash

FREE_SPACE=$(free -mt | grep 'Total' | awk '{print $4}')
TH=500
if [ $FREE_SPACE -lt $TH ]; then
    echo "RAM is running low!"
else
    echo "RAM is running normal."
fi