#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

~/cmd/rebase-staging.sh

for lib in ./src/local_modules/*; do
  cd $lib

  ~/cmd/rebase-staging.sh

  cd $BFX_ROOT_REPO
done





