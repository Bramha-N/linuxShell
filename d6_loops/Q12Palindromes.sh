#!/bin/bash -x

#Write a function to check if the two numbers are Palindromes

read -p "Enter the 1st number: " num1
num2=$num1
id=0

function palindrome()
{
        while [[ $num1 -ne 0 ]]
        do
        id=$(($num1%10))
        num1=$(($num1/10))
        rev=$(echo ${rev}${id} )
        done

        if [ $num2 -eq $rev ]
        then
                echo "palindrome"
        else
                echo "not palindrome"
        fi
}
result=$(palindrome $num1 )
echo "number is: "$result
