#!/bin/bash

SESSION=work

pid="$(pidof tmux)"

# exec
if test "$pid"; then
  tmux attach
else
  #
  tmux new -d -s $SESSION
  #
  tmux new-window -t $SESSION:1 -n 'Admin'
  tmux split-window -h
  tmux select-pane -t 1
  tmux resize-pane -R 5
  tmux split-window -v
  tmux resize-pane -D 1
  tmux send-keys "htop" C-m
  tmux select-pane -t 0
  tmux send-keys "ranger" C-m
  tmux select-pane -t 1
  #
  tmux new-window -t $SESSION:2 -n 'Edit'
  tmux send-keys "nvim" C-m
  tmux split-window -h
  tmux resize-pane -R 40
  tmux select-pane -t 1
  tmux send-keys C-m
  #
  tmux new-window -t $SESSION:3 -n 'Web-browser'
  tmux send-keys "w3m https://duckduckgo.com" C-m
  #
  tmux select-window -t $SESSION:1
  tmux attach-session -t $SESSION
fi
