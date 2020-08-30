#!/bin/bash -x
read -p "Enter the day: " day
read -p "Enter the month: " month
echo $day
echo $month
if [[ $month -eq 3 && $day -ge 20 && $day -le 31 ]] ||
[[ $month -eq 4 && $day -ge 1 && $day -le 30 ]] ||
[[ $month -eq 5 && $day -ge 1 && $day -le 31 ]] ||
[[ $month -eq 6 && $day -ge 1 && $day -le 20 ]]

then
echo "true"
else
echo "false"
fi
