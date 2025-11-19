#!/bin/bash

WINDOW_NAME="Obsidian"

# Your exact launch command
#    (e.g., /usr/bin/obsidian, snap run obsidian, etc.)
LAUNCH_COMMAND="obsidian"

# Check if window exists
if wmctrl -l | grep -q -i "$WINDOW_NAME"; then
    # If yes, focus it
    wmctrl -a "$WINDOW_NAME"
else
    # If no, launch it in the background
    nohup $LAUNCH_COMMAND > /dev/null 2>&1 &
fi
