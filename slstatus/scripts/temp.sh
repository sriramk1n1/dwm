#!/bin/bash

# Extract the temperature of k10temp-pci-00c3, remove the "+" sign
temperature=$(sensors | awk '/k10temp-pci-00c3/{getline; getline; print $2}' | tr -d '+°C')

# Print the temperature value
echo $temperature
# Check if the temperature exceeds 60.0°C
if (( $(echo "$temperature > 60.0" | bc -l) )); then
    echo "Temperature exceeds 60.0°C, running sudo isw -b on"
    sudo isw -b on
fi

