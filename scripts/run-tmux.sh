#!/bin/bash

set -e

SESSION=LeanAuthApp

if [[ `tmux ls 2>/dev/null` == *"$SESSION"* ]]; then
  tmux kill-session -t "$SESSION"
fi

DOCKER_COMPOSE='docker-compose up'
# WEBPACK='bin/webpack-dev-server'
GUARD='guard start --plugin livereload'

tmux -2 new-session -d -s $SESSION -n docker-compose
tmux send-keys "$DOCKER_COMPOSE" C-m

tmux new-window -t $SESSION:2 -n guard
tmux send-keys "$GUARD" C-m

tmux select-window -t 1
