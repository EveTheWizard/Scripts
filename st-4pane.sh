#!/bin/sh
tabbed -r 2 st -w '' tmux new-session \; \split-window -v \; \split-window -h \; \select-pane -t 0 \; \split-window -h 
tmux rename-window '4-pane
