#! /bin/bash

xrdb ~/.Xresources

# Caps lock is escape
setxkbmap -option caps:escape

Telegram -startintray &

# System tray
#trayer --edge top --align right --widthtype percent  --expand true --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x282828 --expand true --heighttype pixel --height 19 --width 8 &

trayer --edge top --align right --widthtype pixel --width 100 --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x282a36 --expand true --heighttype pixel --height 16 &

# Compositing
compton &

# set wallpaper
feh --bg-fill ~/Downloads/wall.png

# Cursor will no longer be an x
xsetroot -cursor_name left_ptr

google-chrome-stable&
slack&
