#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar based on screen
xrandr | grep 'HDMI-1 connected' && polybar main &
xrandr | grep 'HDMI-1 disconnected' && polybar main4k &

