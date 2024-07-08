#! /bin/bash

# Input redirection
while read p; 
do
    echo $p
done < script.sh

# Using cat
cat script.sh | while read p;
do
    echo $p
done 

# Using IFS -> Internal Field Separator
while IFS= read -r line;
do
    echo $line    
done < script.sh