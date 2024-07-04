#! /bin/bash

# Prompt the user to enter three numbers
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "Enter the third number:"
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    max=$num1
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    max=$num2
else
    max=$num3
fi

echo "The maximum of the three numbers is: $max"
