#!/bin/sh

TEMP_DIR=/tmp/xcolor

pick() {

    HEX_COLOR=$(xcolor -f HEX)
    mkdir -p $TEMP_DIR
    HEX="${HEX_COLOR#\#}"
    FNAME="$TEMP_DIR/$HEX.png"
	convert -size 128x128 xc:"$HEX_COLOR" "$FNAME"

    printf %s "$HEX_COLOR" | xclip -sel c
	notify-send -u low --icon="$FNAME" "$HEX_COLOR" "Color Picker"
}

pick

