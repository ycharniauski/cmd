#!/bin/bash

rm -rf ./node_modules
npm cache clean --force
for lib in ./src/local_modules/*; do
(
  echo installing dependencies for: $lib
  cd $lib
  rm -rf ./node_modules
  npm install &&
  rm -rf node_modules/react \
    node_modules/react-dom \
    node_modules/react-router-dom \
    node_modules/react-i18next
) &
done
pwd
npm install
wait
