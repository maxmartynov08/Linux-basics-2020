#!/bin/bash
ps | grep "tail -f /dev/null" | head -c 5 | xargs kill         
