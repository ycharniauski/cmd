#!/bin/bash
(
  cd ~/reps/keet-desktop
  pkill -9 pear-runtime
  
  # NODE_ENV=dev pear run -d -s ~/keet/store/433 .
  npm run dev -- -s ~/keet/store/$1
)
