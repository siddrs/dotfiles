#!/bin/bash

open () {
	kitty -e nmtui &
}

close () {
	killall kitty -e nmtui &
}

pgrep nmtui || kitty -e nmtui
