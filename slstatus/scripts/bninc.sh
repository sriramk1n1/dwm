#!/bin/bash

# Path to the brightness file
brightness_file="/sys/class/backlight/amdgpu_bl1/brightness"

# Read current brightness value
current_brightness=$(cat "$brightness_file")

# Increment brightness by 24 (if within bounds)
new_brightness=$((current_brightness + 24))
if [ "$new_brightness" -le 255 ]; then
    echo "$new_brightness" | tee "$brightness_file" > /dev/null
fi

