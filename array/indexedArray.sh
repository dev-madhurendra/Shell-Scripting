#!/bin/bash

os=("ubuntu" "windows" "kali")

echo "All elements of the array:"
echo {os[@]}

echo "All indexes of the array:"
echo ${!os[@]}

echo "Specific elements of the array:"
echo ${os[0]} ${os[1]} ${os[2]}

echo "Length of the array:"
echo ${#os[@]}

os[3]="mac"

echo "Array after adding 'mac':"
echo ${os[@]}

os[0]="ubuntu/debian"

echo "Length of the array after modification:"
echo ${#os[@]}

unset os[1]  

echo "Array after unsetting an element:"
echo ${os[@]}

echo "All indexes of the array:"
echo ${!os[@]}