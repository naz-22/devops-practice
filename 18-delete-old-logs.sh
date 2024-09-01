#!/binbash
SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIR ]
then 
    echo -e "$SOURCE_DIR  $G Exists $N"
else 
     echo -e "$SOURCE_DIR  $R does not Exists $N"
     exit 1
fi

FILES=$(find $SOURCE_DIR -name  "*.log" -mtime +14)
echo "Files: $FILES"

while IFS= read -r line  # IFS, is called as internal field separator, empty means it will ignore while spaces.-r is for not to ignore special characters like /.
do 
    echo "deleting line: $line"
done <<< $FILES