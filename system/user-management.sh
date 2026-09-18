#!/bin/bash

read -p "Enter username: " username

if id "$username" &>/dev/null
then
    echo "User $username already exists."
else
    sudo useradd -m "$username"

            if [ $? -eq 0 ]
                then
                        echo "User $username created successfully."
            else
                        echo "Failed to create user."
                        exit 1
            fi
fi
echo
echo "User Information: "
echo "-----------------"

id "$username"
