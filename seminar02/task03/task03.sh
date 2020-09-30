#!/bin/bash
ps -e | grep "tail -f /dev/null" | head -n1 | awk '{print $1;}' | xargs kill        
