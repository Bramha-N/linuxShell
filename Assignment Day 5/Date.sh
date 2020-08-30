#!/bin/bash -x

read -p "Enter Day : " day;
read -p "Enter Month : " month;
if [ $month -lt 3 ] || [ $month -gt 6 ] || [ $day -lt 0 ] || [ $day -gt 31 ]
then
  result="false";
elif [ $month -eq 3 ] && [ $day -lt 20 ] || [ $month -eq 6 ] && [ $day -gt 20 ]
then
     result="false";
elif [ $month -eq 4 ] && [ $day -eq 31 ]
then
    result="false";
else
  result="true";
fi
echo $result;
