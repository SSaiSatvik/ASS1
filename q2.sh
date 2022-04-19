#!/bin/bash


# 1a
sed -i '/^$/d' "quotes.txt"



# 2
awk -F "~" '{print $2 " once said, " "\"" $1 "\""}' quotes.txt > speech.txt 
