#! /bin/bash

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2


# NOTE -  [ $num1 -eq 0 -o $num2 -eq 0 ]
# NOTE -  [[ $num1 -eq 0 || $num2 -eq 0 ]]

if [ $num1 -eq 0 ] || [ $num2 -eq 0 ]; then
    echo "At least one of the numbers is zero."
else
    echo "Neither of the numbers is zero."
fi


if [ $num1 -gt 0 ] || [ $num2 -gt 0 ]; then
    echo "At least one of the numbers is positive."
else
    echo "Neither of the numbers is positive."
fi
