#!/bin/sh
TASK=`task rc.verbose=nothing -movie | rofi -dmenu -p "Task "`

if [ -z "$TASK" ]; then
    exit 0
fi

TASK_ID=`echo $TASK | cut -f1 -d' '`

ACTION=`echo -e "start\nstop\ndone" | rofi -dmenu -p "Action"`

if [ -n "$ACTION" ]; then
    task $TASK_ID $ACTION
fi
