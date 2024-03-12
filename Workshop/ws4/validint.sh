#!/bin/bash

while true; do
	read -p "Please enter an integer between 110 and 150 inclusive : " number
	if [[ $number =~ ^[0-9]+$ ]] && [[ $number -ge 110 ]] && [[ $number -le 150 ]];	then
		echo "The value provided is valid"
	else
		echo "The value provided is invalid. Please try again"
	fi
done
exit 0
