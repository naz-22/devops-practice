#!/bin/bash

#Write a shell script prgrm to check if a given number is greater than or not

NUMBER=$1

if [ $NUMBER -gt 20 ] # gt ,lt, eq , -ne , -ge , -le
then 
    echo "given number : $NUMBER is greater than 20"
else
     echo "given number : $NUMBER is grless than 20"
fi
