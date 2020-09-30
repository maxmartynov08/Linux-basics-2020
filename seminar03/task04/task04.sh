#! /bin/bash
file="numbers.txt"
while read line  || [ -n "$line" ];
do
    for x in $line;
    do
        fact=1
        y=2
        while [ $y -le $x ];
        do
            fact=$((fact * $y))
            y=$((y + 1))
        done
        printf "$fact "
    done
done < "$file"