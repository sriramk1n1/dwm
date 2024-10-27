#!/bin/zsh
nitrogen --restore
picom &
copyq &
copyq hide
slstatus &
exec dwm
