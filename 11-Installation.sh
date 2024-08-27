#!/bin/bash

USER=$(id -u)
R= "\e[32m]"
Y= "\e[33m]"
N= "\e[0m]"

CHECK_ROOT()
{
    if [ $USER -ne 0 ]
    then
     echo "you cant install as -e $R you dnt have req priviliges -e $N" 
     exit 1
     fi
}
VALIDATE()
{
    if [ $1 -eq 0 ]
    then 
        echo "$2 is SUCCESS"
    else 
        echo "$2 is not FAILED"
    fi
}
CHECK_ROOT

dnf list installed git 
VALIDATE $? "GIT installation"

if [ $? -eq 0 ]
then 
     echo "Git is already installed"
else
      echo "Git is not yet installed"
      dnf install git -y
      VALIDATE $? "Installed Git"      
fi

dnf list installed mysql 

if [ $? -eq 0 ]
then 
     echo "mysql is already installed"
else
      echo "mysql is not yet installed"
      dnf install mysql -y
      VALIDATE $? "Installed mssql"         
fi