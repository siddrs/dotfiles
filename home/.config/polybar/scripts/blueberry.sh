#!/bin/bash

open () {
	blueberry &
}

close () {
	killall blueberry &
}

pgr=$(pgrep blueberry)

if [ "$pgr" != "" ]
then
	close
fi

if [ "$pgr" == "" ]
then
	open
fi
