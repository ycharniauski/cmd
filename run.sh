#!/bin/bash
(
  cd ~/reps/keet-desktop
  pkill -9 pear-runtime

  if [ -z "$1" ]; then
    STORE="430"
  else
    STORE="$1"
  fi

  NODE_ENV=dev pear run -d -s ~/keet/store/$STORE .
)

