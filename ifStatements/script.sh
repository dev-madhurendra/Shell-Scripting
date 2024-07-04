#!/bin/bash

echo "Enter a number:"
read number


if [ $number -gt 10 ]; then
    echo "The number is greater than 10."
else
    echo "The number is less than or equal 10."
fi
