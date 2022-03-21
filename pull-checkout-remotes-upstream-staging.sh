#!/bin/bash
 
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 

origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

if [[ ! -z $origin && ! -z $upstream ]]; then
  cur_branch=$(git rev-parse --abbrev-ref HEAD)
  if [[ $cur_branch != 'staging' ]]; then
    echo -e "${CYAN}"
    git checkout staging
    echo -e "${NC}"
  fi
  echo -e "${PURPLE}${PWD##*/} PULL upstream/staging HARD RESET origin/staging${NC}"
  git checkout staging
  git pull upstream staging
  git reset upstream/staging --hard
  git push -f --no-verify
  gitk

  if [[ $cur_branch != 'staging' ]]; then
    echo -e "${CYAN}"
    git checkout $cur_branch
    echo -e "${NC}"
  fi
fi

