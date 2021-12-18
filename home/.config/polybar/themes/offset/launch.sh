#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar --config="~/.config/polybar/themes/offset/config" offset-1-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-2-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-3-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-4-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-5-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-6-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-7-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-8-bar &
polybar --config="~/.config/polybar/themes/offset/config" offset-9-bar &
# polybar --config="~/.config/polybar/themes/offset/config" offset-10-bar &

echo "Polybar launched..."
