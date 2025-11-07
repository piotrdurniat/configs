#!/bin/bash

# Define a unique "class" for this specific Kitty instance.
# This ensures we don't accidentally focus a *different* Kitty window.
UNIQUE_CLASS="kitty-tmux-session"

# Search for a window with this specific class
window_id=$(xdotool search --class "$UNIQUE_CLASS" | head -n 1)

if [ -z "$window_id" ]; then
    # Not running: launch it with our unique class
    kitty --class=$UNIQUE_CLASS tmux &
else
    # Already running: bring to front and focus
    xdotool windowactivate "$window_id"
fi
