#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch Polybar, using defualt config location /home/florian/.config/polybar/config
polybar example2 &

echo "Polybar launched..."
