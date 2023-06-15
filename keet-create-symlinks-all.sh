#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

if [ ! -d './node_modules/@holepunchto' ]; then
  echo -e "${RED}/node_modules/@holepunchto not exists.${NC}"
  exit
fi

if [ -d '../keet-store' ]; then
  rm -rf ./node_modules/@holepunchto/keet-store
  (cd ./node_modules/@holepunchto && ln -s ../../../keet-store keet-store)
  echo -e "${PURPLE}"
  ls -al ./node_modules/@holepunchto/keet-store
  echo -e "${NC}"
fi
