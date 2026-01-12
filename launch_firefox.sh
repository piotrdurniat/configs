#!/bin/bash

class_regex='Navigator\.firefox$'

# exclude "Private Browsing" in the title
wid=$(wmctrl -lx | awk -v re="$class_regex" '
    $3 ~ re && $0 !~ /Private Browsing/ { print $1; exit }
')

if [ -n "$wid" ]; then
    wmctrl -ia "$wid"
else
    nohup firefox >/dev/null 2>&1 &
fi
