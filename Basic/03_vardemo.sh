#!/bin/bash

#script to show how to use variables

a=10
name="Sagar"
age=30

echo "MY name is $name and age is $age"

name="Trushal"

echo "My name is $name"

#var to store the output of a command
HOST_NAME=$(hostname)
echo "Name of this machine is $HOST_NAME"