#!/bin/bash

declare -A capitals

capitals["USA"]="Washington D.C."
capitals["UK"]="London"
capitals["France"]="Paris"
capitals["India"]="Kolkata"

echo "Capital of USA: ${capitals["USA"]}"
echo "Capital of UK: ${capitals["UK"]}"
echo "Capital of France: ${capitals["France"]}"
echo "Capital of India: ${capitals["India"]}"

capitals["India"]="New Delhi"
echo "Capital of India: ${capitals["India"]}"

unset capitals["UK"]
echo ${capitals[@]}
echo "Indexes of the array:" ${!capitals[@]}
echo "Length of the array:" ${#capitals[@]}
