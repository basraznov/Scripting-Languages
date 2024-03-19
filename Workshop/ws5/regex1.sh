#!/bin/bash

if [[ -n $1 ]] && [[ $1 =~ ^.*{8,} ]] && [[ $1 =~ .*[0-9].*[0-9].*[0-9].* ]] && [[ $1 =~ [A-Z] ]] && [[ $1 =~ [a-z] ]]; then
	echo "Valid! You may enter"
else 
	echo "Invalid! You may not enter"
fi	
exit 0
