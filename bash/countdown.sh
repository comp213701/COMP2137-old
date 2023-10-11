#!/bin/bash

# the purpose of this script is to count down from 10 to zero
# it will print out each number as it goes along

currentnumber=10
echo "I am at $currentnumber"

while [ $currentnumber -gt 0 ]; do
    currentnumber=$(( currentnumber - 1 ))
    echo "I am at $currentnumber"
done

# written with a for loop, it would look like this

for (( currentnumber=10; $currentnumber > 0; currentnumber-- )); do
    echo I am on $currentnumber
done
