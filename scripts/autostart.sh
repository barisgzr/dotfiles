#!/bin/sh

picom --config /home/blank/.config/picom/picom.conf &
nm-applet &
setxkbmap tr &
nitrogen --restore &
flameshot &
xinput set-prop 'PNP0C50:0e 06CB:7E7E Touchpad' 'libinput Tapping Enabled' 1 & 
