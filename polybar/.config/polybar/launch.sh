#!/usr/bin/env bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 0.1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload &
    xdo hide -N "Polybar"
    # MONITOR=$m polybar --reload bot&
  done
fi

echo "Bars launched..."
