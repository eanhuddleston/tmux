#!/bin/sh
active_window=`tmux display-message -p '#I'`

while [ $active_window -ge 1 ]
do
    prior_window=$((active_window-1))
    eval "tmux swap-window -s "$active_window" -t "$prior_window
    active_window=$prior_window
done

