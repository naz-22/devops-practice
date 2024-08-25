#!bin/bash

FRUITS=( "apple" "banana" "kiwi" ) #array of fruits of size 3 and index starts from 0

echo "first fruit is : ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "third fruit is : ${FRUITS[2]}"

echo "all fruits are : ${FRUITS[@]}"
