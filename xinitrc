#! /bin/bash

xrdb ~/.Xresources

# Caps lock is escape
setxkbmap -option caps:escape

Telegram -startintray &

# System tray
trayer --edge top --align right --widthtype pixel --width 100 --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x002b36 --expand true --heighttype pixel --height 16 &

# Compositing
compton &

# set wallpaper
feh --bg-fill ~/Downloads/solarized.jpg
