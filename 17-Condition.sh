#!/bin/bash
user_id=$(id -u)
if [ "$user_id" -eq 0 ]; then
    echo "You are running this script as root user with sudo acess."
else    
    echo "You are not running this script as root user with sudo acess."
fi 
echo "Please run this script with root privileges to check the condition of the user."
dnf install nginx -y sudo