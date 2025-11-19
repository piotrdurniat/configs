#!/bin/bash

# Regex to match the WM_CLASS of the main Firefox browser.
# This usually covers standard "firefox.Firefox" or "Navigator.Firefox"
FIREFOX_CLASS_REGEX='^(firefox|Navigator)\.Firefox$'

LAUNCH_COMMAND="firefox"

# Find the window ID ($1) where the class ($3) matches our regex.
# 'awk' is much safer than 'grep' for parsing columns.
WINDOW_ID=$(wmctrl -lx | awk -v class_re="$FIREFOX_CLASS_REGEX" '
    $3 ~ class_re {
        print $1; 
        exit
    }
')

if [ -n "$WINDOW_ID" ]; then
    wmctrl -i -a "$WINDOW_ID"
else
    # If no matching window ID, launch the application
    nohup $LAUNCH_COMMAND > /dev/null 2>&1 &
fi
