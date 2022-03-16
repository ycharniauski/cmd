#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

git reset --hard

for lib in ./src/local_modules/*; do
  cd $lib

  git reset --hard

  cd $BFX_ROOT_REPO
done

~/cmd/all-status.sh
