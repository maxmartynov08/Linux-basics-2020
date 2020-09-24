#!/bin/bash
a=$(($RANDOM * ($RANDOM / 1024)))
div=2
prime=true
while [ $(($div * $div)) -le $a ];
do
    if [ $(($a % $div)) -eq 0 ];
    then
        prime=false
    fi
    div=$((div + 1))
done
echo "$a $prime"