#!/bin/bash

open () {
	pavucontrol &
}

close () {
	killall pavucontrol &
}

pgr=$(pgrep pavucontrol)

if [ "$pgr" != "" ]
then
	close
fi

if [ "$pgr" == "" ]
then
	open
fi
