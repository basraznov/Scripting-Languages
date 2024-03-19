#!/bin/bash

cat sampledata.txt | grep -vE "50[0-9]{1}.*" | wc -l
