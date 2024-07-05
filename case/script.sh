#! /bin/bash

echo "Select an operation:"
echo "1. Create file"
echo "2. Delete file"
echo "3. Write to file"
echo "4. Read file"
echo "5. Exit"

echo "Enter your choice:"
read choice

case $choice in
    1)
        echo "Enter file name you want to create : "
        read file
        touch $file
        echo "File $file created successfully!"
        ;;
    2)
        echo "Enter file name you want to delete : "
        read file
        if [ -f $file ]; then
            rm $file
            echo "File $file deleted successfully!"
        else
            echo "File $file does not exist."
        fi
        ;;
    3)
        echo "Enter file name you want to write to : "
        read file
        if [ -f $file ]; then
            echo "Enter text to write to $file (press Ctrl+D to save):"
            cat >> $file
            echo "Text written to $file."
        else
            echo "File $file does not exist."
        fi
        ;;
    4)
        echo "Enter file name you want to read : "
        read file
        if [ -f $file ]; then
            echo "Contents of $file:"
            cat "$file"
        else
            echo "File $file does not exist."
        fi
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
esac
