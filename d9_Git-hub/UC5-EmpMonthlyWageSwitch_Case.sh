#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
Monthly_Working=20
randomcheck=$(($RANDOM%3));
case $randomcheck in
        $isFullTime)
                        empHrs=8;
                        ;;
        $isPartTime)
                        empHrs=4;
                        ;;
        *)
                        empHrs=0;
                        ;;
esac
	salary=$(($empHrs*$empRatePerHr))
	#echo $salary
	echo "Monthly-Salary would be =$(($salary*$Monthly_Working))"

