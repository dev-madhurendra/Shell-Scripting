#! /bin/bash

echo -e "Enter the name of the file : \c"
read file

# e -> is file exist or not
# f -> is file or not
# d -> is directory or not

if [ -e $file ];then
    echo $file file exist.
else
    echo $file file does not exist.
fi