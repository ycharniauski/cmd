#!/bin/bash
(
  cd ~/reps/keet-desktop
  pkill -9 pear-runtime
  #npm run dev -- -s ~/keet/store/433 &
  pear run -s ~/keet/r/r10 pear://abpy95dw4o5383zitcxu1knns4p66ogofdgauohyhm3uqhwb5wao &
  pear run -s ~/keet/r/r11 pear://abpy95dw4o5383zitcxu1knns4p66ogofdgauohyhm3uqhwb5wao &
  pear run -s ~/keet/r/r12 pear://abpy95dw4o5383zitcxu1knns4p66ogofdgauohyhm3uqhwb5wao &

  # pear run -s ~/keet/r/r3 pear://abpy95dw4o5383zitcxu1knns4p66ogofdgauohyhm3uqhwb5wao &
  # pear run -s ~/keet/r/r4 pear://abpy95dw4o5383zitcxu1knns4p66ogofdgauohyhm3uqhwb5wao &
)
