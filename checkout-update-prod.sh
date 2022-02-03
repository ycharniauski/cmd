#!/bin/bash

PURPLE='\033[0;35m'
NC='\033[0m'

cur_branch=$(git rev-parse --abbrev-ref HEAD)
 
echo -e "${PURPLE}${PWD##*/} CHECKOUT from '${cur_branch}' TO 'prod'${NC}"
git fetch upstream prod
git checkout upstream/prod

