#!/bin/bash

# Use amixer to get the status of the 'Master' control
status=$(amixer get Master | grep -o -m 1 '\[on\]')

# Check if '[on]' is found in the status output
if [[ $status == "[on]" ]]; then
    echo "+"
else
    echo "-"
fi

