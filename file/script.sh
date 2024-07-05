#! /bin/bash

echo "Enter a file name: "
read file

echo "Enter text you want to write: "
read text

if [ -e $file ]; then
    if [ -w $file ]; then
        echo $text >> $file
        echo "Text has been written to the file."
    else
        echo "File is not writable."
    fi
else
    echo "File does not exist. Do you want to create it? (Y/N)"
    read choice
    if [ $choice == "Y" ] || [ $choice == "y" ]; then
        touch $file
        if [ $? -eq 0 ]; then
            echo $text >> $file
            echo "File created and text has been written to the file."
        else
            echo "Failed to create the file."
        fi
    else
        echo "Thank you for visiting."
    fi
fi
