#!/bin/bash

# filter="firefox"
filter="keepass"

echo "--- wmctrl output filtered for '${filter}' ---"
# wmctrl -lx | grep -i firefox
wmctrl -lx | grep -i "${filter}"
