#!/bin/bash

declare -i ID
ID=`xinput list | grep -Eio '(touchpad|glidepoint)\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID | grep 'Device Enabled' | awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    xinput disable $ID
    # echo "Touchpad disabled."
   notify-send -u low -i '/usr/share/icons/Papirus/48x48/status/notification-touchpad-disabled-symbolic.svg' 'Touchpad' 'Touchpad Disabled'
else
    xinput enable $ID
    # echo "Touchpad enabled."
    notify-send -u low -i '/usr/share/icons/Papirus/48x48/status/notification-input-touchpad-symbolic.svg' 'Touchpad' 'Touchpad Enabled'
fi
