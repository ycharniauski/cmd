#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

~/cmd/checkout-update-prod.sh

for lib in ./src/local_modules/*; do
  cd $lib

  ~/cmd/checkout-update-prod.sh

  cd $BFX_ROOT_REPO
done




