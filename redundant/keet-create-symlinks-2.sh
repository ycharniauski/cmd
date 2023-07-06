#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' 

if [ ! -d './node_modules/@holepunchto' ]; then
  echo -e "${RED}/node_modules/@holepunchto not exists.${NC}"
  exit
fi

if [ -z "$1" ]; then
  echo -e "${RED}no argument${NC}"
  exit
fi

if [ ! -d "../$1" ]; then
  echo -e "${RED}../$1 not exists.${NC}"
  exit
else
  rm -rf "./node_modules/@holepunchto/$1"
  mkdir -p @holepunchto
  (cd ./@holepunchto && ln -s "../../$1" ./$1)
  echo -e "${PURPLE}"
  ls -al "./@holepunchto/$1"
  echo -e "${NC}"
fi
