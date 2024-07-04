#! /bin/bash

echo $0 $1 $2 $3 '> $1 $2 $3'

args=("$@")

#NOTE - echo arguments by index number
echo ${args[0]} ${args[1]} ${args[2]}

#NOTE - echo all arguments passed
echo $@

#NOTE - number of arguments passed
echo $#