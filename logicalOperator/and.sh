#! /bin/bash

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# NOTE -  if [ $num1 -gt 0 -a $num2 -gt 0 ]; then
# NOTE -  if [[ $num1 -gt 0 && $num2 -gt 0 ]]; then
if [ $num1 -gt 0 ] && [ $num2 -gt 0 ]; then
    echo "Both numbers are greater than zero."
else
    echo "One or both numbers are not greater than zero."
fi

