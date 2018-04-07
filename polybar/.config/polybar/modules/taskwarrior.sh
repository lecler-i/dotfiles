#!/bin/env sh

TASK_COUNT=`task count status:pending`
COUNTER=$1
TASK_ID=$(( ($COUNTER % $TASK_COUNT) + 1))

echo [$TASK_ID] $(task _get $TASK_ID.description)

