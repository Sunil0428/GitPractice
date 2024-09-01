#!/bin/bash

LOGSFOLDER="/home/ec2-user/logs/"

R="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d "$LOGSFOLDER" ]
    then
        echo -e "$Y $LOGSFOLDER exists $N"
    else
        echo -e "$R $LOGSFOLDER is not exists $N"
fi

Files=$(find $LOGSFOLDER -name *.log -mtime +60)

echo $Files