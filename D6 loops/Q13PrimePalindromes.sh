#!/bin/bash -x

#Take a number from user and check if the number is a Prime then show
#that its palindrome is also prime

#a. Write function check if number is Prime

read -p  "Enter the number : " number
count=0
function Prime()
{
for (( i=2; i <= $(( $number-1 )); i++ ))
do
        if [ $(( $number % $i )) == 0 ]
   then
      ((count++))
   fi
done
if [ $count == 0 ]
then
    echo "prime number"
else
    echo "not prime"
fi
}

#b. Write function to get the Palindrome.

function palindromeNo()
{
temp=$number
sum=0
while [[ $temp > 0 ]]
do
     id=$(( $temp % 10 ))
     sum=$(( $sum * 10 + $id ))
     temp=$(( $temp / 10 ))
done
     if [ $sum -eq $number ]
     then
         echo "The number is pallindorme"
     else
         echo "It's not a pallindrome "
     fi
}

: '
#c. Check if the Palindrome number is also prime
function primePalindrome()
{
  if [[ $count == 0 ]]
  then
      echo "Prime number is not palindrome"
  elif [[ $sum -eq $number ]]
  then
      echo "prime number is palindrome"
fi
}
'
result1=$(Prime)
echo  $result1
result2=$(palindromeNo)
echo $result2
#result3=$(primePalindrome)
#echo $result3
