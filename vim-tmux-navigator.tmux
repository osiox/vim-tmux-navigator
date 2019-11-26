#!/usr/bin/env bash

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
tmux bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L \; display-pane"
tmux bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D \; display-pane"
tmux bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U \; display-pane"
tmux bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R \; display-pane"
tmux bind-key -n C-\\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l \; display-pane"
tmux bind-key -T copy-mode-vi C-h select-pane -L \; display-pane
tmux bind-key -T copy-mode-vi C-j select-pane -D \; display-pane
tmux bind-key -T copy-mode-vi C-k select-pane -U \; display-pane
tmux bind-key -T copy-mode-vi C-l select-pane -R \; display-pane
tmux bind-key -T copy-mode-vi C-\\ select-pane -l \; display-pane
