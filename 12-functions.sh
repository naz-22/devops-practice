#!/bin/bash/
USERID=$(id -u)
#echo "USER ID IS : $USERID"
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
if [ $USERID -ne 0  ]
then
    echo "plese run the script with root priviliges"
    exit 1
fi

dnf list installed git

VALIDATE $? "Listing git"


# if [ $? -ne 0 ]
# then 
#     echo "git not installed, going to install it .."
#     dnf install git-y
#     if [ $? -ne 0 ]
#     then 
#         echo "git installation is not success..., check it"
#         exit 1
#     else
#         echo "git installation is success..."
#     fi    
# else
#     echo "git is already installed, nothing to do.."

# fi    

# dnf list installed mysql
# if [ $? -ne 0 ]
# then 
#     echo " mysql is not installed.., going to install it.."
#     dnf install mysql -y
#     if [ $? -ne 0]
#     then 
#         echo "mysql installation is failure..pease check it.."
#         exit 1
#     else  
#         echo "mqsql installation is success.."
#     fi
# else
#     echo "mqsql is already installed .. nothing to do."
# fi   
