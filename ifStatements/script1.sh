#! /bin/bash

# Double Square Brackets [[ ]]
str="Hello"
if [[ $str == "Hello" && $str != "World" ]]; then
    echo "String is 'Hello' and not 'World'."
fi

# Double Parentheses (( ))
num=15
if (( num > 10 )); then
    echo "Number is greater than 10."
fi

# Single Square Brackets [ ]
num=8
if [ $num -gt 5 ]; then
    echo "Number is greater than 5."
fi