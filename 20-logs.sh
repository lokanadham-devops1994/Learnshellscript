#!/bin/bash
user_id=$(id -u)
logs_folder="/var/log/shellscript Practice_logs"
log_file="${logs_folder}/${0}.log"
if [ $user_id -ne 0 ]; then
  echo "Please run this script with root privileges."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
mkdir -p "$logs_folder"
echo "Script execution started at $(date +"%F %T")" 
validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}  failed." 
        exit 1
    else    
        echo "${2}  successful."
        fi
        }
dnf install nginx -y  &>> $log_file
validate $? "nginx installation"
dnf install mysql -y &>> $log_file
validate $? "mysql installation"
echo "Script execution completed at $(date +"%F %T")" 