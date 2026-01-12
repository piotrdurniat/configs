#!/bin/bash

WINDOW_NAME="Google Gemini"

if wmctrl -l | grep -q -i "$WINDOW_NAME"; then
    wmctrl -a "$WINDOW_NAME"
else
    gio launch ~/.local/share/applications/FFPWA-01K9SY8ANM3GMRXJTJCQRN750R.desktop
fi
