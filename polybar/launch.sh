#!/usr/bin/env bash

# Terminate already running bar instance:
# If all bars have ipc enabled:
polybar-msg cmd quit   # close all before running

# else:
# killall -q polybar

# Launch bar 1
echo "---" | tee -a /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown


echo "Polybar launched"
