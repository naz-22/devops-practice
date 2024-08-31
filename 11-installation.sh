#!/bin/bash/
USERID=$(id -u)
#echo "USER ID IS : $USERID"
if [ $USERID -ne 0  ]
then
    echo "plese run the script with root priviliges"
else

fi

dnf install git -y

