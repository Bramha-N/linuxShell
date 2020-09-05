#!/bin/bash -x

#prints a table of the powers of 2 that are less than or equal
#to 2^n till 256 is reached.

read -p "Enter the no :" n
result=1
count=1
while [[ $result -lt 256 && $count -lt $n ]]
do
        result=$(( 2* $(($result)) ))
        echo "$result"
        ((count++))
done
