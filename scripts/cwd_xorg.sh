#!/bin/sh

# Open a terminal window in the same directory as the currently active window.
DIR="$(readlink -e /proc/"$(pgrep -P "$(xdo pid)" | head -n 1)"/cwd)"
if [[ -z $DIR ]]; then
    DIR="$HOME"
fi
echo $DIR
