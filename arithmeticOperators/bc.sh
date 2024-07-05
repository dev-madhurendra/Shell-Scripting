#!/bin/bash

num1=5.5
num2=2.3

sum=$(echo "$num1 + $num2" | bc)
echo "Sum: $sum"

diff=$(echo "$num1 - $num2" | bc)
echo "Difference: $diff"

prod=$(echo "$num1 * $num2" | bc)
echo "Product: $prod"

quot=$(echo "scale=2; $num1 / $num2" | bc)
echo "Quotient: $quot"

sqr=$(echo "scale=3;sqrt($num1)" | bc -l)
echo "Square: $sqr"

exp=$(echo "$num1 ^ $num2" | bc)
echo "Exponentiation: $exp"
