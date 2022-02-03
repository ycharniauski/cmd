#!/bin/bash

 
PURPLE='\033[0;35m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' 

if [[ ${1: -3} ]]; then

  echo "Do you wish to delete all this branches?"
  git branch | grep $1 | while read -r branch; do 
    echo -e "${CYAN}${branch}${NC}"
  done

  while true; do
      read -p "Confirm y / n: " yn
      case $yn in
          [Yy]* ) break;;
          [Nn]* ) exit;;
          * ) echo "Please answer yes or no.";;
      esac
  done

  echo -e "${PURPLE}"

  git branch | grep $1 | while read -r branch; do 
    git branch -D $branch
    git push origin --delete $branch

  done

  echo -e "${NC}Rest branches:"

  git branch

else
  echo -e "Please, put part of branch name as first argument. Length should be greater than 2"
  git branch
fi
