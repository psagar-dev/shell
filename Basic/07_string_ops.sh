#!/bin/bash

myVar="Hey Buddy, How are you?"

myVarLength=${#myVar}

echo "Length of the myVar is $myVarLength"

echo "Upper Case is -------- ${myVar^^}"
echo "Lower case is -------- ${myVar,,}"

#To Replace a string
newVar=${myVar/Buddy/Sagar}
echo "New var is ----- $newVar"

#To slice string
echo "After Slice ${myVar:4:5}"
