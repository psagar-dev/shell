#!/bin/bash

#Script should be execute with sudo/root access.
if [[ ${UID} -ne 0 ]]
then
    echo "Please Run with sudo or root"
    exit 1
fi

#user should provide altlease one argeument as username else guide him
if [[ "${#}" -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [COMMENT]..."
    echo "Create a user with name USER_NAME and comments field of COMMENT"
    exit 1
fi

#Store 1st argument as username
USER_NAME="${1}"

#if case of more than one argument, store it as account comments
COMMENT=${@:2}

#create  a pssword
PASSWORD=$(date +%s%N)

#create a user
useradd -c "$COMMENT" -m $USER_NAME

#check if user is successfully created or not
if [[ $? -ne 0 ]]
then
    echo "The Account could not be created."
    exit 1
fi

#set the password for user
echo $PASSWORD | passwd --stdin $USER_NAME

#check If password is succesfully set or not
if [[ $? -ne 0 ]]
then
    echo "Password could not be set"
    exit 1
fi

#force password change on first login
passwd -e $USER_NAME

#display the username, password, and host where the user created
echo 
echo "Username: $USER_NAME"
echo 
echo "Password: $PASSWORD"
echo 
echo "HostName: $(hostname)"