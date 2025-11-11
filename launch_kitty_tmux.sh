#!/bin/bash

SESSION_NAME="DEF"

# Search for a window with this specific class using wmctrl
window_id=$(wmctrl -lx | grep " $SESSION_NAME\." | awk '{print $1}' | head -n 1)

if [ -z "$window_id" ]; then
    kitty --class=$SESSION_NAME tmux new -A -s "$SESSION_NAME" &
else
    wmctrl -i -a "$window_id"
fi
