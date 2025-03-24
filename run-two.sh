#!/bin/bash
(
  cd ~/reps/keet-desktop
  pkill -9 pear-runtime
  npm run dev -- -s ~/keet/store/433 &
  npm run dev -- -s ~/keet/store/452 &
)
