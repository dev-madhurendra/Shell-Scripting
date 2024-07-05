#!/bin/bash

echo -e "Enter a character: \c"
read char

case $char in
    [aeiouAEIOU])
        echo "$char is a vowel."
        ;;
    [a-zA-Z])
        echo "$char is a consonant."
        ;;
    *)
        echo "$char is not a valid alphabet character."
        ;;
esac
