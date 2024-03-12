#!/bin/bash

old_ifs=IFS
IFS=$'\n'
counter=0
filename=foldernames.txt

for name in $(cat $filename); do
	if [[ $(expr length $name) -le 14 ]]; then
	       echo "Folder $name has been created"
	       ((counter++))
       	fi	       
done
total=`wc -l $filename`
echo "The source file contained $total, out of which $counter folders were created"
IFS=old_ifs
exit 0
