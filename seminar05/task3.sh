#!/bin/bash

commit_regex='issue-[\d]+.*)'
error_msg="Aborting commit. Your commit message is missing issue"
if ! grep -iqE "$commit_regex" "$1"
then
    echo "$error_msg" >&2
    exit 1
fi

