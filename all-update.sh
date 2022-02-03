#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

~/cmd/create-upstream.sh
~/cmd/pull-checkout-remotes-upstream-staging.sh

for lib in ./src/local_modules/*; do
  cd $lib

    ~/cmd/create-upstream.sh
    ~/cmd/pull-checkout-remotes-upstream-staging.sh

  cd $BFX_ROOT_REPO
done




