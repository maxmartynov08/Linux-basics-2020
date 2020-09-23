#! /bin/bash
grep -n -o -E "https://.+?/" urls.txt | awk '{print "<<" $1 ">>"}'