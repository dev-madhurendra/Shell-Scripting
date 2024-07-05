#! /bin/bash

n=1

# while [ $n -le 10 ]; 
# do
#     echo $n
#     n=$((n+1))
# done

while (( $n <= 10 )); 
do
    echo $n
    (( n++ ))
    sleep 1
    # gnome-terminal &
    # xterm

done