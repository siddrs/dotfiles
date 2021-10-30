# Colors
BLANK='#0A0E14'
DEFAULT='#59c2ff'
TEXT='#59c2ff'
WRONG='#FF3333'
VERIFYING='#59c2ff'
ORN='#FFB454'

# Set the paused status of dunst
dunstctl set-paused true

TOTD=`fortune -n 90 -s | head -n 1`

# Font
FONT="JetBrainsMono Nerd Font"


i3lock \
--color=$BLANK				\
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
--screen 1                   \                    \
--clock                      \
--indicator                  \
--verif-text="Verifying..." \
--wrong-text="Try Harder" \
--time-str="%I:%M %p" \
--date-str="%A, %d %b" \
--radius=200 \
--greeter-text="${TOTD}"			\
--greeter-color=${TEXT}				\
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
--greeter-size=25\

echo "Hello"

# Set the paused status of dunst
dunstctl set-paused false

sleep 1
exit