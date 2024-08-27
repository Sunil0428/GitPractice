#!/bin/bash

USER=$(id -u)
R= "\e[1;31m

VALIDATE()
{
  echo "exit status : $R $1"
}

if [ $USER -ne 0 ]
then
   echo "you cant install as you dnt have req priviliges" 
   exit 1
fi


 dnf list installed git 

 VALIDATE $?

# if [ $? -eq 0 ]
# then 
#      echo "Git is already installed"
# else
#       echo "Git is not yet installed"
#       dnf install git -y
#       if [ $? -ne 0 ]
#       then  
#            echo "Git Insatllation is failed .... please check"
#       else
#            echo "Git Installation is successful"
#       fi        
# fi

# dnf list installed mysql 

# if [ $? -eq 0 ]
# then 
#      echo "mysql is already installed"
# else
#       echo "mysql is not yet installed"
#       dnf install mysql -y
#       if [ $? -ne 0 ]
#       then  
#            echo "mysql Insatllation is failed .... please check"
#       else
#            echo "mysql Installation is successful"
#       fi      
# fi