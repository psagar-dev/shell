#!/bin/bash

CSV_PATH=test.csv

if [[ ! -f $CSV_PATH ]]; then
    echo "File $CSV_PATH does not exist."
    exit 1
fi

cat  $CSV_PATH | awk 'NR!=1 {print}' | while IFS=',' read -r id name age
do
    echo "Id is $id"
    echo "Name is $name"
    echo "Age Is $age"
done < $CSV_PATH