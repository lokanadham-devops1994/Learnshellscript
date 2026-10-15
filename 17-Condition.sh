#!/bin/bash
user_id=$(id -u)
if [ "$user_id" -eq 0 ]; then
    echo "You are running this script as root user with sudo acess."
    exit 0
fi 
echo "Please run this script with root privileges to check the condition of the user then proceed...."
dnf install nginxxx -y sudo
if [ "$user_id" -eq 0 ]; then
    echo "You are running this script as root user with sudo acess,nginx installed failed."
    exit 0
else    
    echo "You are  running this script as root user with sudo acess,nginx installed successfully."
fi
dnf install mysqllll -y sudo
if [ "$user_id" -eq 0 ]; then
    echo "You are running this script as root user with sudo acess,mysql installed failed."
    exit 0
else    
    echo "You are  running this script as root user with sudo acess,mysql installed successfully."
fi
echo "Please run this script with root privileges to check the condition of the user then still proceed...."