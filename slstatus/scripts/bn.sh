#!/bin/bash

# Path to the brightness file
brightness_file="/sys/class/backlight/amdgpu_bl1/brightness"

# Read current brightness value
current_brightness=$(cat "$brightness_file")

# Calculate brightness percentage out of 255
brightness_percent=$(echo "scale=0; ($current_brightness * 100) / 255" | bc)

# Print the brightness percentage without any additional text
echo "$brightness_percent"

