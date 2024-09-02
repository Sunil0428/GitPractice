#!/bin/bash
SOURCEDIR=$1
DESTFIR=$2
FILEOLDERTHAN=$3

R="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE()
{
    echo -e "$Y Bachup.sh <SourceDir> <DestDir> <No of days Files Older than> $N"
}

if[ $# -lt 2 ]
then 
    USAGE
fi
