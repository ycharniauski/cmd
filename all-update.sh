#!/bin/bash

# npm install

BFX_ROOT_REPO=$PWD  

echo $BFX_ROOT_REPO

~/cmd/create-upstream.sh
~/cmd/update.sh

for lib in ./src/local_modules/*; do
  cd $lib

    ~/cmd/create-upstream.sh
    ~/cmd/update.sh

  cd $BFX_ROOT_REPO
done

~/cmd/all-status.sh




