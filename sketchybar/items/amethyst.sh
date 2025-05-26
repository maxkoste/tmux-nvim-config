#!/bin/bash

# Try to reload config first
# osascript -e 'tell application "Amethyst" to reloadConfiguration'

# Optional: if you want a full restart fallback, you can uncomment below
osascript -e 'tell application "Amethyst" to quit'
sleep 1
open -a Amethyst
