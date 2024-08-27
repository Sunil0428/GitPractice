#!/bin/bash

LOGDIRECTORY="/var/log/Shelllogs"
FILENAME=$(echo $0|cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d+%H-%M-%S)
LOGFILE="$LOGDIRECTORY/$FILENAME-$TIMESTAMP.log"

USER=$(id -u)

R="\e[32m"
Y="\e[33m"
N="\e[0m"

mkdir -p $LOGDIRECTORY

CHECK_ROOT()
{
    if [ $USER -ne 0 ]
    then
     echo  -e "you cant install as $R you dnt have req priviliges $N"&>>$LOGFILE
     exit 1
     fi
}
VALIDATE()
{
    if [ $1 -eq 0 ]
    then 
        echo -e "$R $2 INSATLLATION is SUCCESS $N"&>>$LOGFILE
    else 
        echo -e "$Y $2 is INSTALLATION FAILED $N"&>>$LOGFILE
    fi
}
USAGE(){
    echo -e "$R USAGE $0 package1, package 2...$N" 
    exit 1
}
CHECK_ROOT

if [ $# -eq 0 ]
    then 
    USAGE
fi

for PACKAGE in $@ #this referes all te arguments passed to this file at run time
do 
     dnf list installed $PACKAGE&>>$LOGFILE
     if [ $? -eq 0 ]
     then
     echo -e "$R $PACKAGE is already installed $N"&>>$LOGFILE
     else
          echo -e "$R $PACKAGE Initaitiong Installation $N"&>>$LOGFILE
          dnf install $PACKAGE -y&>>$LOGFILE
          VALIDATE $? $PACKAGE
     fi
done
