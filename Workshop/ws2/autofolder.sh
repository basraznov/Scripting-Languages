#!/bin/bash

if [ -n $1 ] && [ -n $2 ]; then
	mkdir $1
	touch $1/$2
	echo "The [$1] directory has been and populated with the file [$2]"
else
	echo "not enough argument"
fi

exit 0

