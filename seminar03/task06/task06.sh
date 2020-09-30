#! /bin/bash
file='file.txt'
while read line  || [ -n "$line" ];
do
    echo -n $line && echo $line | wc -w 
done < "$file"