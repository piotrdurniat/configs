#!/bin/bash

SESSION_NAME="DEF"

window_id=$(xdotool search --class "$SESSION_NAME" | head -n 1)

if [ -z "$window_id" ]; then
    kitty --class=$SESSION_NAME tmux new -A -s "$SESSION_NAME" &
else
    xdotool windowactivate "$window_id"
fi
