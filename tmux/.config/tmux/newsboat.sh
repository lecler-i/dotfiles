#!/usr/bin/env bash

tmux has -t 'newsboat' || (
  tmux new-session -d -s'newsboat'
  tmux send-keys "newsboat" C-m
)


