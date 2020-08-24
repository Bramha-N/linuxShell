#!/bin/bash -x

#read cat data.csv

cat data.csv;

echo 1.Employees and Total Pay who has Base pay greater than 100000 :;
awk '{if ($4 > 10000) print$2" "$7}' <data.csv;

echo 2a.Aggregate TotalPay of Captain : ;

cat data.csv | grep CAPTAIN | awk '{ print $2 " " $4 }';

echo 2b.Addition of Total Pay;

cat data.csv | grep CAPTAIN | awk '{ sum+=$4 }END{ print sum }';

echo Overpay between 7ooo to 10000  according to  job title :;

#awk '{if ($5 <= 10000 & $5 >= 7000) print$3" "$5}' <data.csv
awk '$5 <= 10000 && $5 >= 7000 {print$3" "$5}' <data.csv

echo Average BasePay :

cat data.csv | awk '{sum+=$4}END{print sum/NR}'

