#!/bin/bash
 
origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

if [[ ! -z $origin ]]; then
  git pull origin staging
fi

if [[ ! -z $upstream ]]; then
  git pull upstream staging
fi
