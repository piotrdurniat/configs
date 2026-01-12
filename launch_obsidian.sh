#!/bin/bash

WINDOW_NAME="Obsidian"
LAUNCH_COMMAND="obsidian"

if wmctrl -l | grep -q -i "$WINDOW_NAME"; then
    wmctrl -a "$WINDOW_NAME"
else
    nohup $LAUNCH_COMMAND >/dev/null 2>&1 &
fi
