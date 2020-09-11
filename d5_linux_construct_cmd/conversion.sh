#!/bin/bash -x

#By doing Traditional way

echo 5.a.;
echo 1 feet = 12 inch ;
#echo 42 inch = $(( 42 / 12 ))
#echo $(( 100 * 1 / 3 )) | sed 's/..$/.&/'

echo 42 inch = | awk -v feet=$feet  'BEGIN { print $1 - ((42 / 12)) " feet " }'

echo 5.b.
#METERS=`awk 'BEGIN{printf("%0.2f",'$FEET' * 0.3048'`
#Rectangular plot 60 * 40 feet in meters
#We know that 1 meter = 3 feet therfore ;

echo 60*40 feet $x =| awk -v y=$y 'BEGIN { print $1 - ((60 / 3.281)) "*" ((40 / 3.281)) " Meter " }'
echo $x
echo 5.c

#Calculate area of 25 such plots in acres

echo area of 25 plots = | awk -v y=$y 'BEGIN { print $1 - (((60 / 3.281*40 / 3.281)) * 25)" Meter " }'

# to convert area meter to acres
# 1 acre	= 4046.85642 square meters therefore ;

echo area in acres = | awk -v a=$a  'BEGIN { print $1 - (( 5573.64 / 4046.85642)) " acres " }'
