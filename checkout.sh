#!/bin/bash
 
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

origin=$(git remote get-url origin 2> /dev/null)	
upstream=$(git remote get-url upstream 2> /dev/null)

has=$(git branch | grep $1)
cur_branch=$(git rev-parse --abbrev-ref HEAD)

if [[ ! -z $has && $cur_branch != ${1}  ]]; then

  if [[ $(~/cmd/get-unsaved-files.sh | wc -c) -ne 0 ]]; then
      echo -e "${CYAN}${PWD##*/}${RED} Can't checkout ${1}. there are unsaved files"
      ~/cmd/get-unsaved-files.sh
      echo -e "${NC}"
  else

    echo -e "${CYAN}${PWD##*/}${NC} checkout ${PURPLE}${1}${NC}"
    git checkout $1

  fi
else
   echo -e "${CYAN}${PWD##*/}${NC} already on ${PURPLE}${1}${NC}"
fi
