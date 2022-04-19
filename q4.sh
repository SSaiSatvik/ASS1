#!/bin/bash

oldIFS="$IFS"
IFS=","
read -a array

len=${#array[@]}

for (( i=0 ; i<$len ; i++ ))
do
   for (( j=$i ; j<$len ; j++ ))
   do 
       if [[ ${array[$i]} -gt ${array[$j]} ]]
       then
           temp=${array[$i]}
           array[$i]=${array[$j]}
           array[$j]=$temp
       fi
    done
done

echo ${array[*]} 

IFS="$oldIFS"
