#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 


BFX_ROOT_REPO=$PWD  

branch=$(git branch | sed -n '/\* /s///p')

echo -e "${CYAN}${PWD##*/}${NC} - ${PURPLE}${branch}${NC}"

~/cmd/status.sh

for lib in ./src/local_modules/*; do
  cd $lib

  branch=$(git branch | sed -n '/\* /s///p')
  echo -e "${CYAN}${lib##*/}${NC} - ${PURPLE}${branch}${NC}"

  ~/cmd/status.sh

  cd $BFX_ROOT_REPO
done






