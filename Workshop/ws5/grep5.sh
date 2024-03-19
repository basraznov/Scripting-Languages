#!/bin/bash

cat sampledata.txt | grep -E "http:\/\/192\.168\.5\.162\/.*$" > 162attempts.txt 
