#!/bin/bash -x
# CONSTATNTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

function getWorkHrs(){
((totalWorkingDays++))
empCheck=$(($RANDOM%3));
case $empCheck in
  $IS_FULL_TIME)
       empHrs=8
         ;;
  $IS_PART_TIME)
       empHrs=4
        ;;
  *)
            empHrs=0
        ;;
esac
echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$(($RANDOM%3));
   empHrs=$( getWorkHrs $empCheck )
   dailyWage=$(($empHrs*$EMP_RATE_PER_HR))
   dailyWageArray[$totalWorkingDays]=$dailyWage
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
   echo "totalEmpHrs=$totalEmpHrs"
   #done
   totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
   echo "total salary = $totalSalary"
done
   echo "dailyWage array elements:" ${dailyWageArray[@]}

