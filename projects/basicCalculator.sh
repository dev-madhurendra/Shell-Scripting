#!/bin/bash

echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"

echo -n "Enter your choice: "
read choice

case $choice in
    1)
        echo "Enter two numbers for addition:"
        read num1
        read num2
        result=$(echo "$num1 + $num2" | bc)
        echo "Result of $num1 + $num2 = $result"
        ;;
    2)
        echo "Enter two numbers for subtraction:"
        read num1
        read num2
        result=$(echo "$num1 - $num2" | bc)
        echo "Result of $num1 - $num2 = $result"
        ;;
    3)
        echo "Enter two numbers for multiplication:"
        read num1
        read num2
        result=$(echo "$num1 * $num2" | bc)
        echo "Result of $num1 * $num2 = $result"
        ;;
    4)
        echo "Enter two numbers for division:"
        read num1
        read num2
        if [ $num2 -ne 0 ]; then
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result of $num1 / $num2 = $result"
        else
            echo "Error: Division by zero"
        fi
        ;;
    5)
        echo "Exiting calculator."
        exit 0
        ;;
    *)
        echo "Invalid option. Please select a valid option."
        ;;
esac
