#!/bin/bash
 
RED='\033[0;31m'
YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' 

echo -e "${YELLOW}Update keet-desktop${NC}"
~/cmd/keet/keet-update.sh

echo -e "${YELLOW}Update keet-store${NC}"
(cd ../keet-store && ~/cmd/keet/keet-update.sh)

echo -e "${YELLOW}Delete ./node_modules${NC}"
rm -rf ./node_modules
echo -e "${YELLOW}Delete package-lock.json${NC}"
rm ./package-lock.json
echo -e "${YELLOW}Install packages${NC}"
npm i
echo -e "${YELLOW}Create keet-store link${NC}"
~/cmd/keet/keet-create-symlinks.sh keet-store
