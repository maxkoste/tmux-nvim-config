#!/bin/sh

# Focused and default icons
FOCUSED_ICON=""
DEFAULT_ICON=""

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ "$SELECTED" = true ]; then
	sketchybar --set "$NAME" background.drawing=on background.color="$TRANSPARENT" \
		label.color="$BAR_COLOR" \
		icon="$FOCUSED_ICON"
else
	sketchybar --set "$NAME" \
		background.drawing=off \
		label.color="$BLUE" \
		icon="$DEFAULT_ICON"
fi
