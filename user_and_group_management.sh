#!/bin/bash
username=$1
groupname=$2

if ! id "$username" &>/dev/null; then
    useradd -m -g "$groupname" "$username"
    echo "User $username created and added to $groupname."
else
    echo "User $username already exists."
fi


# User and Group Management: Create User if Not Exists