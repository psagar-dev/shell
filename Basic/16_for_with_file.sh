#!/bin/bash

items="/mnt/c/Users/91704/Desktop/Shell/Basic/youtube_2/file.txt"

for item in $(cat $items)
do
    echo $item
done