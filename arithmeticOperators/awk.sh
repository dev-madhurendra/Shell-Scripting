#!/bin/bash

num1=5.5
num2=2.3

sum=$(awk "BEGIN {print $num1 + $num2}")
echo "Sum: $sum"

diff=$(awk "BEGIN {print $num1 - $num2}")
echo "Difference: $diff"

prod=$(awk "BEGIN {print $num1 * $num2}")
echo "Product: $prod"

quot=$(awk "BEGIN {print $num1 / $num2}")
echo "Quotient: $quot"

exp=$(awk "BEGIN {print $num1 ^ $num2}")
echo "Exponentiation: $exp"
