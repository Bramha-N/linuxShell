#!/bin/bash -x

read -p "Enter the value a : " a
read -p "Enter the value b : " b
read -p "Enter the value c : " c

y=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A+B*C}')

echo "Arithmatic Compute a + b * c = " $y
