#!/bin/bash -x

#As a User need to enter a valid email
#- E.g. abc.xyz@bl.co.in - Email has 3 mandatory parts (abc, bl & co) and 
#2 optional (xyz & in) with precise @ and . positions

pat1="^[[:upper:]]{1}[a-zA-Z]{2,}$"
pat2="[a-zA-Z0-9]+\.[a-zA-Z0-9]+@*@bl.(co|in)$"
read -p "Enter first name = " name

if [[ $name =~ $pat1 ]]
then
	read -p "Enter last name = " last
	if [[ $last =~ $pat1 ]]
	then
		read -p "Enter email address in this format ex. bramha.naskari@bl.co = " email	
		if [[ $email =~ $pat2 ]]
		then
			echo Pattern matched;
		else
			echo Enter valid details;
			exit;
		fi		
	else
		echo Enter Valid details;
	fi					
else
	echo Enter Valid details;
	exit;
fi	