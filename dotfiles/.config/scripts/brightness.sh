#!/bin/bash

# Get current brightness as a percentage
current=$(brightnessctl g)
max=$(brightnessctl m)
percent=$(( current * 100 / max ))

# Choose a plain white symbol
if [ $percent -le 25 ]; then
    symbol="☾"   # low brightness
elif [ $percent -le 75 ]; then
    symbol="☼"   # medium brightness
else
    symbol="☀"   # high brightness
fi

# Output JSON for Waybar
echo "{\"text\": \"${symbol} ${percent}%\"}"
