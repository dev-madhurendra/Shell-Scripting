#! /bin/bash

for item in 1 2 3 4 5;
do
    echo $item
done

for value in {1..10};
do 
    echo $value
done

for value in {1..10..2};
do 
    echo $value
done

for (( i=0; i<5; i++ ));
do
    echo Hello $i
done