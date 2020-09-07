#!/bin/bash -x

Wage_per_hr=20
Full_Day=9
Half_Day=4
part_time=8
echo "Daily wage for 8 hrs would be $(($Full_Day*$Wage_per_hr)) and for 4 hrs is $(($Half_Day*$Wage_per_hr))."
x=$(($RANDOM%2))
y=$(($RANDOM%2))
echo "Calculating daily wage of Employee Suresh :"

if [ $x == 1 ]
then
   echo "Suresh is present"
	if [ $y == 1 ]
	then
		echo "He worked for part time so his wage would be $(($part_time*$Wage_per_hr))"
	else
		echo "He worked for full day so his wage would be $(($Full_Day*$Wage_per_hr))"
	fi
else
   echo "Suresh is absent therfore his total earning for today is 0."
fi
