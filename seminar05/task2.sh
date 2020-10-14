#!/bin/bash
read -r from to
for commit in $(git rev-list $from^..$to)
do
    echo $(git log --format=%B -n 1 $commit) >> seminar05/release-notes
done