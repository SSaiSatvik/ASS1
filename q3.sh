#!/bin/bash

#3a

wc -c < $1

#3b

wc -l < $1

#3c

wc -w < $1

#3d

awk '{ print "Line No:" NR "-Count of Words:" NF }' $1

#3e



sed -e  's/[^A-Za-z]/ /g' $1 | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | sort -rn > rand.txt
awk '{if(( $1 != 1 )) print "Word:  " $2 "   -Count of repetition:  " $1}' rand.txt
rm rand.txt
