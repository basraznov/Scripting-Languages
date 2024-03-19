#!/bin/bash

cat sampledata.txt | grep ^GET.* | wc -l
