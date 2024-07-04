#! /bin/bash

if read -t 5 -p "Enter your username (you have 5 seconds): " username; then
    echo "Hello, $username!"
else
    echo "Timeout occurred, no input received."
fi
