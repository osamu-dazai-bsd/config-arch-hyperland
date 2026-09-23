#!/bin/bash
hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap' | awk '{
    if ($0 ~ /English/) print "EN";
    else if ($0 ~ /Russian/) print "RU";
    else if ($0 ~ /Ukrainian/) print "UA";
    else print "??";
}'
