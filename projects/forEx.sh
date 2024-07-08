#! /bin/bash

for cmd in ls pwd date;
do
    echo "..........$cmd..........."
    $cmd
done