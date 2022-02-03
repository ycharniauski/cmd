#!/bin/bash

tput setaf 3 # switch to yellow without adding new line
git status | grep -p "\t" | grep -v "modified:   src/local_modules/"
tput sgr 0 # reset color




