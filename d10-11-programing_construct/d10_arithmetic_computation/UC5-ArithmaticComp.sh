#!/bin/bash -x

read -p "Enter the value a : " a
read -p "Enter the value b : " b
read -p "Enter the value c : " c

x=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A%B+C}')
echo "Arithmatic Compute  a % b + c = " $x

y=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A+B*C}')
echo "Arithmatic Compute a + b * c = " $y

z=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A*B+C}')
echo "Arithmatic Compute a * b + c = " $z

w=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print C+A/B}')
echo "Arithmatic Compute c + a / b = " $w

