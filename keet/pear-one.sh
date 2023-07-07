#!/bin/bash

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 

NODE_VERSION="v18.14.0"

STORE="~/keet/store/node${NODE_VERSION}-s${1}"

unset NODE_OPTIONS
source ~/.nvm/nvm.sh
nvm use $NODE_VERSION
echo -e "${PURPLE}store: ${STORE}${NC}"
npm run dev -- -s $STORE
