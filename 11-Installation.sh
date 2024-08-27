#!/bin/bash

USER=$(id -u)
VALIDATE()
{
  echo "exit status : $1"
}

if [ $USER -ne 0 ]
then
   echo "you cant install as you dnt have req priviliges" 
   exit 1
fi
 dnf list installed git 
 VALIDATE $?