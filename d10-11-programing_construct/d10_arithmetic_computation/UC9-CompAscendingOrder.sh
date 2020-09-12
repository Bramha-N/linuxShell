#!/bin/bash -x

read -p "Enter the value a : " a
read -p "Enter the value b : " b
read -p "Enter the value c : " c

declare -A ComputeDictionary
declare -a array

x=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A%B+C}')
echo "Arithmatic Compute  a % b + c = " $x,
ComputeDictionary["first"]=$x

y=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A+B*C}')
echo "Arithmatic Compute a + b * c = " $y,
ComputeDictionary["second"]=$y

z=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print A*B+C}')
echo "Arithmatic Compute a * b + c = " $z,
ComputeDictionary["third"]=$z

w=$(echo | awk -v B=$b -v C=$c -v A=$a 'BEGIN {print C+A/B}')
echo "Arithmatic Compute c + a / b = " $w,
ComputeDictionary["fourth"]=$w

#echo "${!ComputeDictionary[@]} : ${ComputeDictionary[@]}"
#echo "Dictionary is ${!ComputeDictionary[@]} : ${ComputeDictionary[@]}" | tr ' ' '\n' | sort -n

echo "Dictionary is as follows: "

for i in "${!ComputeDictionary[@]}"
do
	echo "$i : ${ComputeDictionary[$i]}"
	array+=("${ComputeDictionary[$i]}")
done
Array=( $( printf "%s\n" "${array[@]}" | sort -n ) )
echo "Compute in Ascending Format : " ${Array[@]}
