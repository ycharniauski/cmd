#!/bin/bash

rm -rf ./node_modules
for lib in ./src/local_modules/*; do
(
  echo clear dependencies for: $lib
  cd $lib
  rm -rf ./node_modules
) &
done
wait
