#!/bin/bash

# Usage: tmux-short-path.sh <MAX_LENGTH> <FULL_PATH_STRING>
MAX_LEN=${1:-15}             # Default length is 15 if not provided
PATH_STRING="$2"             # The full path string passed by Tmux

# Extract only the base directory name (e.g., 'orthogonal-subspace-learning')
DIR_NAME=$(basename "$PATH_STRING")

if [ ${#DIR_NAME} -gt $MAX_LEN ]; then
    # If length > MAX_LEN, print the substring plus ellipsis
    echo "${DIR_NAME:0:$MAX_LEN}..."
else
    # Otherwise, print the full name
    echo "$DIR_NAME"
fi
