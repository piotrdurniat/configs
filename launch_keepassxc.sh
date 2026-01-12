#!/bin/bash

class_regex='keepassxc.KeePassXC'

wid=$(wmctrl -lx | awk -v re="$class_regex" '$3 ~ re {print $1; exit}')

if [ -n "$wid" ]; then
    wmctrl -ia "$wid"
else
    nohup keepassxc >/dev/null 2>&1 &
fi
