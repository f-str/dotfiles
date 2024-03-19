#!/bin/sh
img=/tmp/lockscreen.png

# Take a screenshot
grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') $img

# Pixelate it
convert $img -scale 10% -scale 1000% $img

# Lock the screen
swaylock -f -F -i $img --indicator-radius 100 

# Times the screen off and puts it to background
#swayidle \
#    timeout 10 'swaymsg "output * dpms off"' \
#    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
#swaylock -c 550000 --clock --indicator --screenshots --effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 4x2 --datestr "%a %e.%m.%Y" --timestr "%k:%M"
# Kills last background task so idle timer doesn't keep running
#kill %%
