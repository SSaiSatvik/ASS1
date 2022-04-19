#!/bin/bash


#5a


word=$1

strlen=${#word}

reverse=""

for (( i = strlen - 1 ; i >= 0 ; i-- ))
do

    reverse=$reverse${word:$i:1}
done

echo "$reverse"



#5b


echo "$reverse" | tr "a-z" "b-za" | tr "A-Z" "B-ZA"


#5c


word=$1

strlen=${#word}

reverse=""

for (( i = strlen/2 - 1 ; i >= 0 ; i-- ))
do

    reverse=$reverse${word:$i:1}

done

for (( i = strlen/2 ; i < strlen ; i++ ))
do

    reverse=$reverse${word:$i:1}

done


echo "$reverse"

