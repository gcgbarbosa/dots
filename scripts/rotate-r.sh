#!/bin/sh

# rotates stuff to the right
xrandr -o right
# rotate touch screen
xsetwacom set 'Wacom HID 5115 Finger touch' Rotate cw
xsetwacom set 'Wacom HID 5115 Finger touch'  MapToOutput eDP-1


