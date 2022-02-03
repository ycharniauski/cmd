#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

has=$(git branch | grep $1)
cur_branch=$(git rev-parse --abbrev-ref HEAD)

if [[ ! -z $has && $cur_branch != ${1}  ]]; then
  echo -e "${PURPLE}${PWD##*/} checkout ${1} ${NC}"
  git checkout $1
fi

for lib in ./src/local_modules/*; do
  cd $lib

  has=$(git branch | grep $1)
  cur_branch=$(git rev-parse --abbrev-ref HEAD)

  if [[ ! -z $has && $cur_branch != ${1}  ]]; then
    echo -e "${CYAN}${PWD##*/}${NC} checkout ${PURPLE}${1}${NC}"
    git checkout $1
  fi

  cd $BFX_ROOT_REPO
done

echo Branches:
~/cmd/all-status.sh




