#!/bin/bash

set -e

SESSION=LeanAuthApp

if [[ `tmux ls 2>/dev/null` == *"$SESSION"* ]]; then
  tmux kill-session -t "$SESSION"
fi
