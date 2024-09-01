#!/bin/bash

LOGSFOLDER="/home/ec2-user/logs"

R="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d "$LOGSFOLDER" ]
{
    Then
        echo -e "$Y$LOGSFOLDER exists $N"
    else
        echo -e "$R$LOGSFOLDER is not exists $N"

fi
}
