#!/bin/bash
read -p "Enter the email id :" email
#for Abc.xyx@bl.co.in
#for abc.xyx@bl.co.in
if [[ $email =~ [a-zA-Z0-9]+\.[a-zA-Z0-9]+@*@bl.co.in$ ]]
then
        echo "vaild"
else
        echo "invaild"
fi