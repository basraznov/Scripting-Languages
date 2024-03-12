#!/bin/bash

old_ifs=IFS
filename=nums.txt
IFS=$'\n'
for line in $(cat $filename); do
	for i in "${line[@]}"; do
		echo "$i-"	
	done
	break
done
IFS=old_ifs
exit 0
