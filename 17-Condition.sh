#!/bin/bash
user_id=$(id -u)
if [ "$user_id" -ne 0 ]; then
    echo "You are running this script as root user with sudo acess."
    exit 1

fi 
echo "Please run this script with root privileges to check the condition of the user then proceed...."
dnf install nginxxx -y sudo
dnf install mysqllll -y sudo
echo "Please run this script with root privileges to check the condition of the user then still proceed...."