#!/bin/bash
 
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 

origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

if [[ ! -z $origin && ! -z $upstream ]]; then
  cur_branch=$(git rev-parse --abbrev-ref HEAD)
  echo -e "${PURPLE}${PWD##*/} FETCH MERGE (${cur_branch})${NC}"
  if [[ $cur_branch != 'staging' ]]; then
    echo -e "${CYAN}"
    git checkout staging
    echo -e "${NC}"
  fi
  git checkout staging
  git pull origin staging
  git fetch upstream
  git merge upstream/staging
  git push origin staging

  if [[ $cur_branch != 'staging' ]]; then
    echo -e "${CYAN}"
    git checkout $cur_branch
    echo -e "${NC}"
  fi
fi

