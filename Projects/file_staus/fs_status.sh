#!/bin/bash

FU=$(df -H | egrep -v "Filesystem|none|rootfs|tmpfs" | grep 'drivers' | awk '{print $5}' | tr -d %)

if [ $FU -gt 30 ]; then
    echo "Filesystem is running low! - $FU%"
else
    echo "Filesystem is running normal."
fi