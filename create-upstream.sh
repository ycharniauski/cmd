#!/bin/bash
 
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

if [[ $origin == *"/bitfinexcom/"* && -z $upstream ]]; then
  if [[ -z $GIT_USERNAME ]]; then
    echo -e "${RED}CAN'T CREATE UPSTREAM: PLEASE EXPORT \$GIT_USERNAME ENV VARIABLE ${NC}"
  else
    echo -e "${PURPLE}${PWD##*/} CREATE UPSTREAM${NC}"
    neworigin=$(echo $origin | sed "s/bitfinexcom/${GIT_USERNAME}/g")
    echo -e "${CYAN} REMOTE ADD upstream=${origin}${NC}"
    git remote add upstream $origin
    echo -e "${CYAN} REMOTE SET-URL origin=${neworigin}${NC}"
    git remote set-url origin $neworigin
  fi
fi

if [[ $origin == *"/${GIT_USERNAME}/"* && -z $upstream ]]; then
  if [[ -z $GIT_USERNAME ]]; then
    echo -e "${RED}CAN'T CREATE UPSTREAM: PLEASE EXPORT \$GIT_USERNAME ENV VARIABLE ${NC}"
  else
    echo -e "${PURPLE}${PWD##*/} CREATE UPSTREAM${NC}"
    newupstream=$(echo $origin | sed "s/${GIT_USERNAME}/bitfinexcom/g")
    echo -e "${CYAN} REMOTE ADD upstream=${newupstream}${NC}"
    git remote add upstream $newupstream
  fi
fi

