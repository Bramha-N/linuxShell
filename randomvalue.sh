#!/bin/bash -x

echo 1.Random Value is = $RANDOM;

echo 2.Single digit is =$(($RANDOM%10));

echo 3. Dice number between 1 to 6 is = $(($RANDOM%6+1));

echo 4.a.
a=$(($RANDOM%6+1 + $RANDOM%6+1));
echo Addition of two dice no. = $a;

echo 4.b.
X=$(($RANDOM%6+1));
Y=$(($RANDOM%6+1));
z=$(( $X + $Y ));
echo Sum = $z;

#We can do it by using loops will see by different method
echo 5.
e=$(($RANDOM%100));
f=$(($RANDOM%100));
g=$(($RANDOM%100));
h=$(($RANDOM%100));
i=$(($RANDOM%100));
j=$(( $e + $f + $g + $h + $i  ));
echo Sum = $j;
k="$(($j/5))"
echo Average = $k 
