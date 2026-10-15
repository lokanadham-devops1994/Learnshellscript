#!/bin/bash
user_id=$(id -u)
if [ "$user_id" -ne 0 ]; then
    echo "You are running this script as  root user with sudo acess, you can be accessed failed."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
echo "Please run this script with root privileges to check the condition of the user then proceed...."
dnf install nginx -y sudo
if [ "$user_id" -ne 0 ]; then
    echo "You are running this script as root user with sudo acess,nginx installed failed."
    exit 0
else    
    echo "You are  running this script as root user with sudo acess,nginx installed successfully."
fi
dnf install mysql -y sudo
if [ "$user_id" -ne 0 ]; then
    echo "You are running this script as root user with sudo acess,mysql installed failed."
    exit 0
else    
    echo "You are  running this script as root user with sudo acess,mysql installed successfully."
fi
echo "Please run this script with root privileges to check the condition of the user then still proceed...."