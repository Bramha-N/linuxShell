#!/bin/bash -x

read -p "Please enter year : " year;
if [ $(($year%4)) = 0 ]
then
		echo "Yes..! It is a Leap Year...!"
else
		echo "So sad..! It is not a Leap year "
fi
