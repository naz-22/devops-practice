#!/bin/bash
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
    echo -e "$package is $R failed  $N"
    exit 1
else 
    echo -e "$package is  $G success $N"
fi 
}
CHECK_ROOT


#sh 15-loops.sh git mysql postfix nginx
for package in $@ # $@ referes to all arguments passed to script
do
 dnf list installed  $package
 if [ $? -ne 0 ]
 then 
    echo -e "$package is not installed .. going to install it..."
    dnf install $package -y
    VALIDATE $? "installing $package "
else
    echo "$package is already installed nothing to do. "
fi
done