#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All argumeent as a single string: $*"
echo "All argument as an array: $@"
echo "Number of arguments: $#"
echo "Process Id of this script: $$"
echo "Exit status of the last command: $?"