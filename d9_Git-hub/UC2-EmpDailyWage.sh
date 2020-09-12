#!/bin/bash -x

Wage_per_hr=20
Full_Day=8
Half_Day=4
echo "Daily wage for 8 hrs would be $(($Full_Day*$Wage_per_hr)) and for 4 hrs is $(($Half_Day*$Wage_per_hr))."
x=$(($RANDOM%2))
echo "Calculating daily wage of Employee Suresh :"

if [ $x == 1 ]
then
   echo "Suresh is present and his daily wage for 8 hrs would be $(($Full_Day*$Wage_per_hr)) and for 4 hrs is $(($Half_Day*$Wage_per_hr))."

else
   echo "Suresh is absent therfore his total earning for today is 0."
fi

