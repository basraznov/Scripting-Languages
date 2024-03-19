#!/bin/bash

read -p "Enter the name of the file to be processed: "
cat $REPLY | sed 's/\(.*\)\/\(.*\)\/\(.*\):\(.*\):\(.*\):\(.*\)/\1-\2-\3 \4h \5m \6s/'
exit 0
