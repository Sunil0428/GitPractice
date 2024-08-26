#!/bin/bash

User=$(id -u)

if [ $User -ne 0 ]
then
   echo "you cant install as you dnt have req priviliges" 
   exit 1
fi

dnf install git -y