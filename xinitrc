#! /bin/bash

xrdb ~/.Xresources

# Caps lock is escape
setxkbmap -option caps:escape

Telegram -startintray &

# System tray
trayer --edge top --align right --widthtype percent  --expand true --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x282828 --expand true --heighttype pixel --height 19 --width 8 &

# Compositing
compton &

# set wallpaper
feh --bg-fill ~/Downloads/wall.jpg

# Cursor will no longer be an x
xsetroot -cursor_name left_ptr

google-chrome-stable&
slack&
