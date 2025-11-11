#!/bin/bash

# IMPORTANT: Change this if your window title is different
WINDOW_NAME="Google Gemini"

if wmctrl -l | grep -q -i "$WINDOW_NAME"; then
    wmctrl -a "$WINDOW_NAME"
else
    # IMPORTANT: Use the .desktop file YOU found
    gio launch ~/.local/share/applications/FFPWA-01K9SY8ANM3GMRXJTJCQRN750R.desktop
fi
