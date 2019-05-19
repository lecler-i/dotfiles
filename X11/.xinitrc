export TERMINAL=alacritty
xsetroot -solid "#333333"
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
dbuslaunch="`which dbus-launch 2>/dev/null`" 
if [ -n "$dbuslaunch" ] && [ -x "$dbuslaunch" ] && [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then 
  eval `$dbuslaunch --sh-syntax --exit-with-session` 
fi
/* exec xmonad */
exec i3 &> /tmp/i3.log
/* exec bspwm */
