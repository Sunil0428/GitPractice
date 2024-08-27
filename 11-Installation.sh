#!/bin/bash

USER=$(id -u)
VALIDATE()
{
    if [ $1 -eq 0 ]
    then 
        echo "$2 is SUCCESS"
    else 
        echo "$2 is not SUCCESS"
    fi
}

if [ $USER -ne 0 ]
then
   echo "you cant install as you dnt have req priviliges" 
   exit 1
fi
 dnf list installed git 
 VALIDATE $?

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