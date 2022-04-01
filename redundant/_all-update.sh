#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

~/cmd/create-upstream.sh
~/cmd/fetch-merge-staging.sh

for lib in ./src/local_modules/*; do
  cd $lib

  if [[ ${PWD##*/} == '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!bfx-ui-pulse-component' ]]; then
    echo -e "${PURPLE}${PWD##*/} IGNORE (it contains pre-commit hooks and warning)${NC}"
  else
    ~/cmd/create-upstream.sh
    ~/cmd/fetch-merge-staging.sh
  fi

  cd $BFX_ROOT_REPO
done




