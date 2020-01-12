#!/usr/bin/env sh

killall xkeysnail
xkeysnail --watch -q ~/.config/xkeysnail/configs/main.py, 1 2> /dev/null
