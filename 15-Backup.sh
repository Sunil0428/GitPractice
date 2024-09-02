#!/bin/bash
SOURCEDIR=$1
DESTFIR=$2
FILEOLDERTHAN=$3

R="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE()
{
    echo -e "$Y USAGE:: Bachup.sh <SourceDir> <DestDir> <No of days Files Older than> $N"
    exit 1
}

if [ $# -lt 2 ]
then 
    USAGE #To check the right no of arguments have been passed or not
    
fi

#Check the given directories are present in the system or not

if [ -d "$1" ]
then 
    echo -e "$R Given source directory $1 is  present in the system $N"
    exit 1
else 
    echo -e "$Y Given source directory $1 is not present in the system $N" 
fi

if [ -d "$2" ]
then 
    echo -e "$R Given destination directory $2 is present in the system $N"
    exit 1
else 
    echo -e "$Y Given destination directory $2 is not present in the system $N" 
fi
