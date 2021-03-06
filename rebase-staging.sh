#!/bin/bash

PURPLE='\033[0;35m'
NC='\033[0m'

cur_branch=$(git rev-parse --abbrev-ref HEAD)
 
if [[ $cur_branch != 'staging' && $cur_branch != 'master' ]]; then
  echo -e "${PURPLE}${PWD##*/} REBASE BRANCH ${cur_branch} TO staging${NC}"
  git rebase staging
fi

