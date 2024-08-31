#!/bin/bash/
USERID=$(id -u)
#echo "USER ID IS : $USERID"
if [ $USERID -ne 0  ]
then
    echo "plese run the script with root priviliges"
    exit 1
fi

dnf list installed gitttt
if [ $? -ne 0 ]
then 
    echo "git not installed, going to install it .."
    dnf install gittt -y
    if [ $? -ne 0 ]
    then 
        echo "git installation is not success..., check it"
        exit 1
    else
        echo "git installation is success..."
    fi    
else
    echo "git is already installed, nothing to do.."

fi    
