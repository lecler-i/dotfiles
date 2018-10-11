#!/usr/bin/env bash
find $XDG_CONFIG_HOME/tmux/enabled -maxdepth 1 -type l -exec sh {} \;


