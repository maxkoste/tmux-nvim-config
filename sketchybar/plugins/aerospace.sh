#!/usr/bin/env bash

# Arguments:
# $1 = workspace ID passed from sketchybar loop
workspace="$1"

# Determine if this workspace is focused (from Aerospace)
if [ "$workspace" = "$FOCUSED" ]; then
	SELECTED=true
else
	SELECTED=false
fi

# --- Logic from aerospace.sh ---
if [ "$SELECTED" = true ]; then
	sketchybar --set "$NAME" background.drawing=on
else
	sketchybar --set "$NAME" background.drawing=off
fi

# --- Logic from icon toggle script ---
# FOCUSED_ICON=""
# DEFAULT_ICON=""
#
# source "$CONFIG_DIR/sketchybar/colors.sh"
#
# if [ "$SELECTED" = true ]; then
# 	sketchybar --set "$NAME" icon.font.size=14 background.drawing=on \
# 		background.color="$TRANSPARENT" \
# 		label.color="$BAR_COLOR" \
# 		icon="$FOCUSED_ICON"
# else
# 	sketchybar --set "$NAME" icon.font.size=14 \
# 		background.drawing=off \
# 		label.color="$BLUE" \
# 		icon="$DEFAULT_ICON"
# fi
