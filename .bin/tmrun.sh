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
  tmux new-window -t $SESSION:1 -n 'admin'
  tmux split-window -h
  tmux select-pane -t 1
  tmux resize-pane -R 10
  tmux split-window -v
  tmux resize-pane -D 1
  tmux select-pane -t 3
  #
  tmux select-window -t $SESSION:1
  tmux attach-session -t $SESSION
fi
