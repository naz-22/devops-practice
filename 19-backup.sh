#!/bin/bash

SOURCE_DIR=$1
DEST_Dir=$2
DAYS=${3:-14} #IF $3 IS EMPTY , DEFAULT IS 14 DAYS

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE(){
    echo -e " $R USAGE :: $N sh 19-backup.sh <source> <destination> <days(optional)>"
}
#Check the source and destination are provided

if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]
then    
    echo  "$SOURCE_DIR  $Rdoes not exists... please check " 
fi

if [ ! -d $DEST_Dir ]
then    
    echo  "$DEST_Dir  does not exists... please check " 
fi

FILES=$(find $SOURCE_DIR -name  "*.log" -mtime +14)

if [ -n FILES ]
then
    echo "Files are found"
else    
    echo "No files older than $DAYS "
fi
