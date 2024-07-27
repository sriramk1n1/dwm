#!/bin/bash
echo "$(amixer get Master | grep -o -m 1 '\[.*%\]' | sed 's/\[//' | sed 's/%\]//'
)"
