#!/bin/bash

LOGSFOLDER="/home/ec2-user/logs/"

R="\e[32m"
Y="\e[33m"
N="\e[0m"

CHECK_ROOT()
{
    if [ $(id -u) -ne 0 ]
    then
        echo "Logged in user is unauthorized"
    else
        echo "Logged in user is authorized"
    fi
}

CHECK_ROOT

if [ -d "$LOGSFOLDER" ]
    then
        echo -e "$Y $LOGSFOLDER exists $N"
    else
        echo -e "$R $LOGSFOLDER is not exists $N"
fi

Files=$(find $LOGSFOLDER -name *.log -mtime +30)

echo $Files

while IFS= read -r Result
do
    echo "Deleting line: $Result"
    rm -rf $Result

done <<<$Files
