#!/bin/bash

SOURCE_DIR=$1
DEST_Dir=$2
DAYS=${3:-14} #IF $3 IS EMPTY , DEFAULT IS 14 DAYS
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)

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
    echo  "$SOURCE_DIR  does not exists... please check " 
fi

if [ ! -d $DEST_Dir ]
then    
    echo  "$DEST_Dir  does not exists... please check " 
fi

FILES=$(find $SOURCE_DIR -name  "*.log" -mtime +14)
echo "Files: $FILES"

if [ ! -z  $FILES ] #true if FILES is empty, ! makes it expression false.
then
    echo "Files are found"
    ZIP_FILE="$DEST_Dir/app-logs-$TIME_STAMP.zip"
    find $SOURCE_DIR -name  "*.log" -mtime +14 | zip "$ZIP_FILE" -@

   #Check if zip file is successfully created or not
   if [ -f $ZIP_FILE ]
   then
      echo "Successfully Zipped files older than $DAYS"

      #remove the files after zipping from source directory
     
      while IFS= read -r file  # IFS, is called as internal field separator, empty means it will ignore while spaces.-r is for not to ignore special characters like /.
      do 
        echo "deleting line: $file"
         rm -rf $file

      done <<< $FILES
    else 
        echo "zipping the files is failed"
        exit 1
    fi

else    
    echo "No files older than $DAYS "
fi 
