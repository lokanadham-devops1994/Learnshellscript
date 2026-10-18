#!/bin/bash
user_id=$(id -u)
logs_folder="/var/log/shellscript-Practice"
log_file="${logs_folder}/${0}.log"
if [ $user_id -ne 0 ]; then
  echo "Please run this script with root privileges."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
mkdir -p "$logs_folder"
echo "Script execution started at $(date +"%F %T")" &>> $log_file
validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}  failed." | tee -a $log_file
        exit 1
    else    
        echo "${2}  successful." | tee -a $log_file
        fi
}
for package in $@;
    do
        dnf list installed $package &>> $log_file
        if [ $? -ne 0 ]; then
            echo "Going to install: ${package}"
            dnf install $package -y &>> $log_file
            validate $? "installaling ${package}"
        else
            echo "${package} is already installed.......,skipping."
        fi
    done
echo "Script execution completed at $(date +"%F %T")" &>> $log_file