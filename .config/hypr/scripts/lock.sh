#!/bin/sh
imgdp1=/tmp/lock-dp-1.png
imgdp2=/tmp/lock-dp-2.png

grim -o DP-1 $imgdp1
grim -o DP-2 $imgdp2

magick $imgdp1 -scale 2% -scale 42% $imgdp1
magick $imgdp2 -scale 2% -scale 42% $imgdp2

hyprctl dispatch exec hyprlock
