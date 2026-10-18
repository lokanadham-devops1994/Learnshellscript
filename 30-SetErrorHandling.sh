#!/bin/bash
set -e
user_id=$(id -u)
logs_folder="/var/log/shellscript-Practice"
log_file="${logs_folder}/${0}.log"
R="\e[1;31m"
G="\e[1;32m"
Y="\e[1;33m"
M="\e[1;35m"
N="\e[0m"
trap 'echo "Error at "$LINENO", command"$BASH_COMMANND""'ERR
if [ $user_id -ne 0 ]; then
  echo "Please run this script with root privileges."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
mkdir -p "$logs_folder"
echo "Script execution started at $(date +"%F %T")" &>> $log_file
for package in $@;
    do
        dnf list installed $package &>> $log_file
        if [ $? -ne 0 ]; then
            echo -e "${M}Going to install:${package},${G}SUCCESSFULLY!${N}"
            dnf install $package -y &>> $log_file
        else
        echo -e "${M}Already installed:${package},${Y}SKIPPING!{N}"
        fi
    done
echo "Script execution completed at $(date +"%F %T")" &>> $log_file