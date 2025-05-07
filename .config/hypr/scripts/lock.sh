#!/bin/sh
imgdp1=/tmp/lock-dp-1.png
imgdp2=/tmp/lock-dp-2.png
imgdp3=/tmp/lock-dp-3.png
# imghdmia1=/tmp/lock-hdmi-a-1.png

grim -o DP-1 $imgdp1
grim -o DP-2 $imgdp2
grim -o DP-3 $imgdp3
# grim -o HDMI-A-1 $imghdmia1

magick $imgdp1 -scale 2% -scale 42% $imgdp1
magick $imgdp2 -scale 2% -scale 42% $imgdp2
magick $imgdp3 -scale 2% -scale 42% $imgdp3
#  magick $imghdmia1 -scale 2% -scale 42% $imghdmia1

hyprctl dispatch exec hyprlock
