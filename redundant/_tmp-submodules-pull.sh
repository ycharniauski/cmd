#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

for r in $(git remote); do
  git pull $r staging
done


for lib in ./src/local_modules/*; do
  cd $lib
  echo $lib

  origin=$(git remote get-url origin 2> /dev/null)	
  upstream=$(git remote get-url upstream 2> /dev/null)
  echo origin: $origin
  echo upstream: $upstream

  if [[ $origin == *"/bitfinexcom/"* && -z $upstream ]]; then
    echo NEEDS TO ADD UPSTREAM AND CHANGE ORIGIN
    neworigin=${origin//bitfinexcom/ycharniauski}
    git remote add upstream $origin
    git remote set-url origin $neworigin
    echo NEW ORIGIN: $neworigin
    echo UPSTREAM $origin
  fi

  
  

  for r in $(git remote); do 
    git pull $r staging
  done
  cd $BFX_ROOT_REPO
done




