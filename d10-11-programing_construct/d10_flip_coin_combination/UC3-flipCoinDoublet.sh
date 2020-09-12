#!/bin/bash -x
HH=0
HT=0
TH=0
TT=0
trials=0
declare -A dictionary

while [[ $trials -lt 5 ]]
do
   Flip_Coin1=$(($RANDOM%2))
   Flip_Coin2=$(($RANDOM%2))

  if [[ $Flip_Coin1 -eq 0 && $Flip_Coin2 -eq 0 ]]
  then
      echo "HH"
      ((HH++))
      dictionary[HH]=$HH
  elif [[ $Flip_Coin1 -eq 0 && $Flip_Coin2 -ne 0  ]]
  then
      echo "HT"
      ((HT++))
      dictionary[HT]=$HT
  elif [[ $Flip_Coin1 -ne 0 && $Flip_Coin2 -eq 0  ]]
  then
      echo "TH"
      ((TH++))
      dictionary[TH]=$TH
  else
      echo "TT"
      ((TT++))
      dictionary[TT]=$TT
  fi
      trials=$(($HH+$HT+$TH+$TT))
done
   echo "HH = "${dictionary[HH]}
   echo "HT = "${dictionary[HT]}
   echo "TH = "${dictionary[TH]}
   echo "TT = "${dictionary[TT]}

HH=$(echo | awk -v a=$HH -v b=$trials  'BEGIN {print a/b*100}')
echo "HH=${HH}%"
HT=$(echo | awk -v c=$HT -v d=$trials  'BEGIN {print c/d*100}')
echo "HT=${HT}%"
TH=$(echo | awk -v e=$TH -v f=$trials  'BEGIN {print e/f*100}')
echo "TH=${TH}%"
TT=$(echo | awk -v g=$TT -v h=$trials  'BEGIN {print g/h*100}')
echo "TT=${TT}%"
