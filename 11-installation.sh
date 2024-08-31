#!/bin/bash/
USERID=$(id -u)
#echo "USER ID IS : $USERID"
if [ $USERID -ne 0  ]
then
    echo "plese run the script with root priviliges"
    exit 1
fi

dnf list installed git 
if [ $? -ne 0 ]
then 
    echo "git not installed, going to install it .."
    dnf install git -y
else
    echo "git is already installed, nothing to do.."

fi    
