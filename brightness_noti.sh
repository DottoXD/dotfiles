#!/bin/bash

brightness_percent=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')

if [ "$brightness_percent" -le 33 ]; then
    icon="󰃞"
elif [ "$brightness_percent" -le 66 ]; then
    icon="󰃟"
else
    icon="󰃠"
fi

dunstify -h int:value:"$brightness_percent" \
         -h string:x-dunst-stack-tag:brightness_push \
         -u low \
         "   $icon  Brightness ($brightness_percent%)"
