#!/bin/env sh

TASKS=($(task _ids -movie))

TASK_COUNT=${#TASKS[@]}
COUNTER=$(($1 % $TASK_COUNT))

TASK_ID="${TASKS[$COUNTER]}"

echo [$TASK_ID] $(task _get $TASK_ID.description)

