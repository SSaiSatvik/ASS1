#!/bin/bash



# a
sed -i '/^$/d' quotes.txt



#b
awk '!visited[$0]++' quotes.txt



