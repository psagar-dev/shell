#!/bin/bash

read -p "Enter the username: " username
echo "You Entred $username"

sudo useradd -m $username
echo "New User Added"