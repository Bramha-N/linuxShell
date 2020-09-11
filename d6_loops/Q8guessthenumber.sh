#!/bin/bash -x

echo "Guess the number between 1-100 :"
num=$(($RANDOM%99+1))
Number_of_attempt=1
while :
do
	read -p "Now guess the number $Number_of_attempt : " user_number

	if [ $num -eq $user_number ]
	then
		 echo "Hola..! Your attempt is $Number_of_attempt and finally it's correct"
  	break
	else
		echo "Your guess is wrong"

		if [ $user_number -ge $num ]
		then
		 echo "Hint : Number is lesser than $user_number : "
		else
		 echo "Hint : Number is greter than $user_number : "
		fi
	fi
	Number_of_attempt=$((Number_of_attempt+1))
done
