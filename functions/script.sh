#! /bin/bash

greet() {
    echo "Hello, $1"
}

greet "Madhurendra"
greet "World"
greet "Jane Doe"

add() {
    echo $(($1+$2))
}

multiply() {
    echo $(($1*$2))
}

div() {
    echo $(($1/$2))
}

sub() {
    echo $(($1-$2))
}

add 110 20