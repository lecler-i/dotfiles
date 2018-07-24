#!/usr/bin/env bash

tmux has -t 'cmus' || (
  tmux new-session -d -s'cmus'
  tmux send-keys "cmus" C-m
  tmux splitw -h -p 10
  tmux send-keys "until pgrep cmus;  do sleep 2; done; lyvi" C-m
  tmux selectp -t 1
)


