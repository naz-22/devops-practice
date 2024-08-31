#!/bin/bash/
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
CHECK_ROOT()
{
if [ $USERID -ne 0  ]
then
    echo "plese run the script with root priviliges"
    exit 1
fi
}

VALIDATE()
{
if [ $1 -ne 0 ]
then 
    echo -e "$2 is $R failed  $N"
    exit 1
else 
    echo -e "$2 is  $G success $N"
fi 
}

CHECK_ROOT
dnf list installed git

if [ $? -ne 0 ]
then 
    echo "git not installed, going to install it .."
    dnf install git-y
    VALIDATE $? "installing git"
else
    echo "git is already installed, nothing to do.."
fi    

dnf list installed mysqlss
if [ $? -ne 0 ]
then 
    echo " mysql is not installed.., going to install it.."
    dnf install mysqlss -y
    VALIDATE $? "installing mysql"
else
    echo "mqsql is already installed .. nothing to do."
fi   
