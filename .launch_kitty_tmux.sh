#!/bin/bash

# Define a unique name for BOTH the window class and the tmux session
SESSION_NAME="DEF"

# Search for a window with this specific class
window_id=$(xdotool search --class "$SESSION_NAME" | head -n 1)

if [ -z "$window_id" ]; then
    # Window is not open.
    # We use "tmux new -A -s"
    # -A = Attach to session if it exists, otherwise create it.
    # -s = Specify the session name.
    
    kitty --class=$SESSION_NAME tmux new -A -s "$SESSION_NAME" &
else
    # Window is open: just bring it to the front.
    xdotool windowactivate "$window_id"
fi
