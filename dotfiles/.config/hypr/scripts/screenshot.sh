#!/bin/bash
# -----------------------------------------------------
# Screenshot script using grim, slurp, swappy & wl-copy
# -----------------------------------------------------

DIR="$HOME/Pictures/screenshots"
mkdir -p "$DIR"
NAME="screenshot_$(date +%d%m%Y_%H%M%S).png"
FILE="$DIR/$NAME"

option2="Selected area"
option3="Fullscreen (delay 3 sec)"

options="$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -replace -theme ~/.config/rofi/launchers/type-2/style-1.rasi -config ~/.config/rofi/config-screenshot.rasi -i -no-show-icons -l 2 -width 30 -p "Take Screenshot")

case $choice in
    $option2)
        grim -g "$(slurp)" "$FILE" && wl-copy --type image/png < "$FILE" && swappy -f "$FILE"
        notify-send "Screenshot saved and copied to clipboard" "Mode: Selected area"
    ;;
    $option3)
        sleep 3
        grim "$FILE" && wl-copy --type image/png < "$FILE" && swappy -f "$FILE"
        notify-send "Screenshot saved and copied to clipboard" "Mode: Fullscreen"
    ;;
esac
