#!/bin/bash
 
RED='\033[0;31m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 

origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

if [[ $(~/cmd/get-unsaved-files.sh | wc -c) -ne 0 ]]; then
    echo -e "${PURPLE}${PWD##*/} ${RED} was not updated: there are unsaved files"
    ~/cmd/get-unsaved-files.sh
    echo -e "${NC}"
else

  if [[ ! -z $origin && ! -z $upstream ]]; then
    cur_branch=$(git rev-parse --abbrev-ref HEAD)
    if [[ $cur_branch != 'main' ]]; then
      echo -e "${CYAN}"
      git checkout main
      echo -e "${NC}"
    fi
    echo -e "${PURPLE}${PWD##*/} PULL upstream/main HARD RESET origin/main${NC}"
    git checkout main
    git pull upstream main
    git pull upstream --tags
    git reset upstream/main --hard
    git push -f --no-verify

    if [[ $cur_branch != 'main' ]]; then
      echo -e "${CYAN}"
      git checkout $cur_branch
      echo -e "${NC}"
    fi
  fi

fi
