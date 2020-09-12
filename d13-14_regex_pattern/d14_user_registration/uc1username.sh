#!/bin/bash -x
#As a User need to enter a valid First Name
#- First name starts with Cap and has

minimum 3 characters
pat1="^[[:upper:]]{1}[a-zA-Z]{2,}$"
read -p "Enter first name = " name		
if [[ $name =~ $pat1 ]]
then
			echo Pattern matched;		
else
	echo Enter Valid details;
	exit;
fi	