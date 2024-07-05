#!/bin/bash

declare -A phone_directory

phone_directory["Alice"]="123-456-7890"
phone_directory["Bob"]="234-567-8901"
phone_directory["Charlie"]="345-678-9012"

print_phone_directory() {
    echo "Phone Directory:"
    for name in "${!phone_directory[@]}"
    do
        echo "$name: ${phone_directory[$name]}"
    done
}

echo "Welcome to the Phone Directory Program"

print_phone_directory

phone_directory["Eve"]="456-789-0123"

echo "Added Eve to the directory."

print_phone_directory

unset phone_directory["Bob"]

echo "Removed Bob from the directory."

print_phone_directory
