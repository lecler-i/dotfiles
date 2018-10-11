xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xrandr --output eDP1 --mode 1920x1080
find $XDG_CONFIG_HOME/tmux/enabled -maxdepth 1 -type l -exec sh {} \;
exec i3 &> /tmp/i3.log
