#!/bin/bash -x

read -p "How many number of time you wants to flip ? :" flip;
for ((n=1; n<=flip; n++))
do
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];
then
    echo "heads"
else
    echo "tails"
fi
done
