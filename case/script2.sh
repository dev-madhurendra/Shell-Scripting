#!/bin/bash

echo -e "Enter some character : \c"
read value

case $value in
    [a-z])
        echo "You have entered a lowercase alphabet character."
        ;;
    [A-Z])
        echo "You have entered an uppercase alphabet character."
        ;;
    [0-9])
        echo "You have entered a numeric character."
        ;;
    ?)
        echo "You have entered a special character."
        ;;
    *)
        echo "You have entered multiple characters or an invalid input."
        ;;
esac
