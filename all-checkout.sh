#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

BFX_ROOT_REPO=$PWD  

~/cmd/checkout.sh $1 $2

for lib in ./src/local_modules/*; do
  cd $lib

  ~/cmd/checkout.sh $1 $2

  cd $BFX_ROOT_REPO
done

echo Branches:
~/cmd/all-status.sh




