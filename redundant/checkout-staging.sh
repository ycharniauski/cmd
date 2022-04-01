#!/bin/bash

PURPLE='\033[0;35m'
NC='\033[0m'

cur_branch=$(git rev-parse --abbrev-ref HEAD)
 
if [[ $cur_branch != 'staging' ]]; then
  echo -e "${PURPLE}${PWD##*/} CHECKOUT from '${cur_branch}' TO 'staging'${NC}"
  git checkout staging
fi

