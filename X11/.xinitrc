export DISPLAY=":0.0"
xhost +rbs
xrdb ~/.Xressources
xmodmap ~/.Xmodmap
xrandr --output eDP1 --mode 1920x1080
exec i3 &> /tmp/i3.log
/* exec xmonad */
