#!/bin/bash -x
HHH=0
HHT=0
HTH=0
THH=0
TTT=0
TTH=0
THT=0
HTT=0
trials=0
#read -p "How many no. of time do you want to flip : " n
declare -A dictionary
while [[ $trials -lt 5 ]]
do
   Flip_Coin1=$(($RANDOM%2))
   Flip_Coin2=$(($RANDOM%2))
	Flip_Coin3=$(($RANDOM%2))

  if [[ $Flip_Coin1 -eq 0 && $Flip_Coin2 -eq 0 && $Flip_Coin3 -eq 0 ]]
  then
      echo "HHH"
      ((HHH++))
      dictionary[HHH]=$HHH
  elif [[ $Flip_Coin1 -eq 0 && $Flip_Coin2 -eq 0 && $Flip_Coin3 -ne 0  ]]
  then
      echo "HHT"
      ((HHT++))
      dictionary[HHT]=$HHT
  elif [[ $Flip_Coin1 -eq 0 && $Flip_Coin2 -ne 0 && $Flip_Coin3 -eq 0  ]]
  then
      echo "HTH"
      ((HTH++))
      dictionary[HTH]=$HTH
  elif [[ $Flip_Coin1 -ne 0 && $Flip_Coin2 -eq 0 && $Flip_Coin3 -eq 0  ]]
  then
      echo "THH"
      ((THH++))
      dictionary[THH]=$THH
	elif [[ $Flip_Coin1 -ne 0 && $Flip_Coin2 -ne 0 && $Flip_Coin3 -ne 0  ]]
  then
      echo "TTT"
      ((TTT++))
      dictionary[TTT]=$TTT
  elif [[ $Flip_Coin1 -ne 0 && $Flip_Coin2 -ne 0 && $Flip_Coin3 -eq 0  ]]
  then
      echo "TTH"
      ((TTH++))
      dictionary[TTH]=$TTH
  elif [[ $Flip_Coin1 -ne 0 && $Flip_Coin2 -eq 0 && $Flip_Coin3 -ne 0  ]]
  then
      echo "THT"
      ((THT++))
      dictionary[THT]=$THT
  else
      echo "HTT"
      ((HTT++))
      dictionary[HTT]=$HTT
  fi
      trials=$(($HHH+$HHT+$HTH+$THH+$TTT+$TTH+$THT+$HTT))
done
   echo "HHH = "${dictionary[HHH]}
   echo "HHT = "${dictionary[HHT]}
   echo "HTH = "${dictionary[HTH]}
   echo "THH = "${dictionary[THH]}
	echo "TTT = "${dictionary[TTT]}
   echo "TTH = "${dictionary[TTH]}
   echo "THT = "${dictionary[THT]}
   echo "HTT = "${dictionary[HTT]}


HHH=$(echo | awk -v a=$HHH -v b=$trials  'BEGIN {print a/b*100}')
echo "HHH=${HHH}%"
HHT=$(echo | awk -v c=$HHT -v d=$trials  'BEGIN {print c/d*100}')
echo "HHT=${HHT}%"
HTH=$(echo | awk -v e=$HTH -v f=$trials  'BEGIN {print e/f*100}')
echo "HTH=${HTH}%"
THH=$(echo | awk -v g=$THH -v h=$trials  'BEGIN {print g/h*100}')
echo "THH=${THH}%"
TTT=$(echo | awk -v a=$TTT -v b=$trials  'BEGIN {print a/b*100}')
echo "TTT=${TTT}%"
TTH=$(echo | awk -v c=$TTH -v d=$trials  'BEGIN {print c/d*100}')
echo "TTH=${TTH}%"
THT=$(echo | awk -v e=$THT -v f=$trials  'BEGIN {print e/f*100}')
echo "THT=${THT}%"
HTT=$(echo | awk -v g=$HTT -v h=$trials  'BEGIN {print g/h*100}')
echo "HTT=${HTT}%"


