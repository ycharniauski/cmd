#!/bin/bash

npm install
for lib in ./src/local_modules/*; do
(
  echo installing dependencies for: $lib
  cd $lib
  npm install &&
  rm -rf node_modules/react \
    node_modules/react-dom \
    node_modules/react-i18next
) &
done
wait
