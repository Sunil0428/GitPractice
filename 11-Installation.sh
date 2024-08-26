#!/bin/bash

User=$(id -u)

if [ $User -ne 0 ]
then
   echo "you cant install as you dnt have req priviliges" 
   exit 1
fi

dnf list installed git 

if [ $? -eq 0 ]
then 
     echo "Git is already installed"
else
     
      echo "Git is not yet installed"
      echo "So we are installing , provide the command"
      read Command
      ($Command)
      echo "Given command is $Command"
fi