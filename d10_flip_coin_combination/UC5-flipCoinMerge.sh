#!/bin/bash -x

echo "Getting combination of single : "
Heads=0
Tails=0
trials=0
declare -A dictionary

while [[ $trials -lt 5 ]]
do
        Flip_Coin=$(($RANDOM%2))
        if [[ $Flip_Coin -eq o ]]
        then
                echo "Head"
                ((Heads++))

                  dictionary[Head]=$Heads

        else
                echo "Tail"
                ((Tails++))

                  dictionary[Tail]=$Tails
        fi
        trials=$(($Heads+$Tails))
done
echo "Head = "${dictionary[Head]}
echo "Tail = "${dictionary[Tail]}

pheads=$(echo | awk -v a=$Heads -v b=$trials  'BEGIN {print a/b*100}')
echo "Head=${pheads}%"
ptails=$(echo | awk -v c=$Tails -v d=$trials  'BEGIN {print c/d*100}')
echo "Tail=${ptails}%"

echo "Getting combination of double : "
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

echo "Getting combination of Triplet : "
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

