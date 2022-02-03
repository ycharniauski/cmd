#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

~/cmd/checkout-staging.sh

for lib in ./src/local_modules/*; do
  cd $lib

  ~/cmd/checkout-staging.sh

  cd $BFX_ROOT_REPO
done




