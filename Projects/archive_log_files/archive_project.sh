#!/bin/bash
#Revission:001$
#Wed Dec 11 03:29:05 UTC 2024

#variable
BASE=/mnt/c/Users/91704/Desktop/Shell/Basic/Projects/archive_log_files
DAY=10
DEPTH=1
RUN=0

#Check if the directory is preset or not
if [ ! -d $BASE ]; then
    echo "directory does not exist: $BASE"
    exist 1
fi

#create 'archive' folder if don preset
if [ ! -d $BASE/archive ]; then
    mkdir $BASE/archive
fi

for i in `find $BASE -maxdepth $DEPTH -type f -size +40M`
do
    if [ $RUN -eq 0 ]; then
        echo "[$(date "+%Y-+%m-+%d +%H:+%M:+%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done