# Colors
BLANK='#00000000'
DEFAULT='#59c2ff'
TEXT='#59c2ff'
WRONG='#FF3333'
VERIFYING='#59c2ff'

# Set the paused status of dunst
dunstctl set-paused true

# Font
FONT="JetBrainsMono Nerd Font"


i3lock \
--insidever-color=$BLANK     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$BLANK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 10                     \
--clock                      \
--indicator                  \
--verif-text="Verifying..." \
--wrong-text="Try Harder" \
--time-str="%I:%M %p" \
--date-str="%A, %d %b" \
--radius=200 \
\
--date-font="$FONT" \
--time-font="$FONT" \
--layout-font="$FONT" \
--verif-font="$FONT" \
--wrong-font="$FONT" \
--greeter-font="$FONT" \
\
--date-size=30 \
--time-size=40 \
--layout-size=40 \
--verif-size=40--wrongsize=40 \
--greeter-size=40 \

# Set the paused status of dunst
dunstctl set-paused false

sleep 1
exit
