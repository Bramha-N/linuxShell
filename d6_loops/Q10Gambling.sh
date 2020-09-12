#!/bin/bash -x
#gambler starts with Rs 100 and places Re 1 bet
money=100
won=0
bet=0
lose=0
#Write a Program where a gambler starts with Rs 100 and places Re 1 bet until he/she goes broke i.e. no more money to gamble or reaches the goal of Rs 200. Keeps track of number of times won and number of bets made.
while [[ $money -le 200 ]]
do
	result=$(($RANDOM%2))
	if [ $result -eq 1 ]
	then
		echo "money=$(($money+1))"
		echo "won=$(($won+1))"
		echo "Bet No. $bet : "
		((money++))
		((won++))
		((bet++))
	else
		echo "money=$(($money-10))"
		echo "lose=$(($lose+1))"
		((money++))
		((lose++))
		#((bet--))
	if [ $money -eq 200 ]
   then
      echo "Bingo..! you have won $money."
	elif [ $money -eq 0 ]
	then
		echo "You have not enough money Go home"
	fi
	fi
		echo "No. of times he wons $won :"
      echo "No. of times he lose $lose :"
      echo "No. of bets : $bet"
done
