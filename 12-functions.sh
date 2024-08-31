#!/bin/bash/
USERID=$(id -u)
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
    echo "$2 is failed"
    exit 1
else 
    echo "$2 is success"
fi 
}


dnf list installed git

if [ $? -ne 0 ]
then 
    echo "git not installed, going to install it .."
    dnf install git-y
    VALIDATE $? "installing git"
else
    echo "git is already installed, nothing to do.."
fi    

dnf list installed mysql
if [ $? -ne 0 ]
then 
    echo " mysql is not installed.., going to install it.."
    dnf install mysql -y
    VALIDATE $? "installing mysql"
else
    echo "mqsql is already installed .. nothing to do."
fi   
