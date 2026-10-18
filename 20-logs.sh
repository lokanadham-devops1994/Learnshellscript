#!/bin/bash
user_id=$(id -u)
logs_folder="/var/log/shellscript Practice_logs"
log_file="$logs_folder/$0_$(date +%Y-%m-%d_%H-%M-%S).log"
if [ $user_id -ne 0 ]; then
  echo "Please run this script with root privileges."
    exit 0
else
    echo "You are running this script as root user with sudo acess,you can be accessed successfully."
fi 
mkdir -p "$logs_folder"
echo "Logs will be saved in $log_file"
echo "Script execution started at $(date +%Y-%m-%d_%H-%M-%S)"  | tee -a $log_file
validate(){
    if [ $? -ne 0 ]; then
        echo "You are running this script as root user with sudo acess, $2 installed failed."  
        exit 0
    else    
        echo "You are  running this script as root user with sudo acess, $2 installed successfully." 
    fi
}
dnf install nginx -y sudo &>> $log_file
validate $? "nginx installation"
dnf install mysql -y sudo &>> $log_file
validate $? "mysql installation"
echo "Script execution completed at $(date +%Y-%m-%d_%H-%M-%S)"  | tee -a $log_file