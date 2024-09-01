#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects, it is usually 75

while IFS= read -r line  # IFS, is called as internal field separator, empty means it will ignore while spaces.-r is for not to ignore special characters like /.
do 
   echo $line
done <<< $DISK_USAGE
