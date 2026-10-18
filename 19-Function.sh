#!/bin/bash
user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "Please run this script with root privileges."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
validate(){
    if [ $? -ne 0 ]; then
        echo "You are running this script as root user with sudo acess, $2 installed failed."
        exit 0
    else    
        echo "You are  running this script as root user with sudo acess, $2 installed successfully."
    fi
}
echo "Please run this script with root privileges to check the condition of the user then proceed...."
dnf install nginx -y sudo
validate $? "nginx installation"
dnf install mysql -y sudo
validate $? "mysql installation"
echo "Please run this script with root privileges to check the condition of the user then still proceed...."