#!/bin/sh

TEMP_DIR=/tmp/xcolor
MSG=${XDG_CACHE_HOME:-$HOME/.cache}/xcolor.msg

EXPIRE_TIME=5000

main() {

    HEX_COLOR=$(xcolor -f HEX)
    mkdir -p $TEMP_DIR
    HEX="${HEX_COLOR#\#}"
    FNAME="$TEMP_DIR/$HEX.png"
    convert -size 100x100 xc:"$HEX_COLOR" "$FNAME"
    COLOR_CODE="$HEX_COLOR"

    printf %s "$COLOR_CODE" | xclip -sel c
        notify-send --icon="$FNAME" "$COLOR_CODE" "Color Picker" --expire-time="$EXPIRE_TIME"
}

main



