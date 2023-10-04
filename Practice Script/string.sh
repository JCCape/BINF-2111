#!/bin/bash

line_1="This is a string"
line_2="Hello"
line_3="Strings are very cool"

if [ ${#line_1} -gt ${#line_2} ] && [ ${#line_11} -gt ${#line_33} ]; then
  echo "The biggest is String 1: $line_1"
elif [ ${#line_2} -gt ${#line_1} ] && [ ${#line_2} -gt ${#line_3} ]; then
  echo "The biggest is String 2: $line_2"
else
  echo "The biggest is String 3: $line_3"
fi  
