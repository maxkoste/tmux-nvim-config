#!/bin/bash

MAX_LABEL_LENGTH=30

if ! pgrep -x "Spotify" >/dev/null; then
	sketchybar --set spotify label="" icon.color=0xffa6da95
	exit 0
fi

state=$(osascript -e 'tell application "Spotify" to player state')

if [ "$state" = "playing" ]; then
	artist=$(osascript -e 'tell application "Spotify" to artist of current track')
	track=$(osascript -e 'tell application "Spotify" to name of current track')
	label="$artist - $track"

	# Truncate label if too long
	if [ ${#label} -gt $MAX_LABEL_LENGTH ]; then
		label="${label:0:$((MAX_LABEL_LENGTH - 1))}…"
	fi

	sketchybar --set spotify label="$label" icon.color=0xff1ed760 
else
	sketchybar --set spotify label="" icon.color=0x00000000 #No logo if nothings playing
fi
