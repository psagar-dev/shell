#!/bin/bash

echo "Kindly provide 2 arguments"
echo 
echo "No, of arguments passed - $#"
echo 
echo "All The argument are - $@"
echo 
echo "First argument is $1"
echo "Second argument is $2"

for fileName in $@
do
    echo "Copying file $fileName"
done