#!/bin/bash

#output the Prime Numbers in particular range.

read -p "Enter the number :" n
for ((i=1; i<=n; i++))

do

      output=$(( $i % 2))

      if [ $output -ne 0 ]
      then
      echo "We got Prime numbers: $i"
      fi
      #if [ $output -eq 0 ]
      #then
      #echo "We got even numbers: $i"
      #fi

done
