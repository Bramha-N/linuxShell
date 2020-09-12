#!/bin/bash -x


x=$(($RANDOM%2))

echo "Employee daily attendance"

if [ $x == 1 ]
then
	echo "Suresh is present"
else
	echo "Suresh is absent"
fi

