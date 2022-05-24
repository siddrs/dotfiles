#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom && notify-send -u normal "Disabled" "Picom"
else
	picom -b --config ~/.config/picom/picom.conf && notify-send -u normal "Enabled" "Picom"
fi
