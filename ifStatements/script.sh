#!/bin/bash

echo "Enter a number:"
read number


if [ $number -gt 10 ]; then
    echo "The number is greater than 10."
else
    echo "The number is less than or equal 10."
fi

if (( $number > 0 )); then
    echo Number is positive
elif (( $number < 0  )); then
    echo Number is negative.
else
    echo Number is zero
fi