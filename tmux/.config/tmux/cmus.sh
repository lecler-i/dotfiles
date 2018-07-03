#!/usr/bin/env bash

tmux has -t 'cmus' || (
  tmux new-session -d -s'cmus'
  tmux send-keys "cmus" C-m
  tmux splitw -h -p 10
  tmux send-keys "lyvi" C-m
  tmux selectp -t 1
)


