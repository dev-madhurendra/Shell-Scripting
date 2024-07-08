#! /bin/bash

n=1
until [ $n -gt 10 ]; 
do
    echo $n
    $(( n++ ))
done


# filename="while.sh"

# until [ -f "$filename" ]; do
#   echo "Waiting for $filename to be created..."
#   sleep 2
# done

# echo "$filename found!"
