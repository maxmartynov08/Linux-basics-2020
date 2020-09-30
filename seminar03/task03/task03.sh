#! /bin/bash
read -r a b
initial_a=$a
initial_b=$b
while [ $b -gt 0 ];
do
    a=$((a % $b))
    temp=$a
    a=$b
    b=$temp
done
echo $initial_a $initial_b $a