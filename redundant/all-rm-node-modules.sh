#!/bin/bash

for lib in ./*; do
(
  cd $lib
  echo $PWD
  rm -rf ./node_modules/*
) &
done
wait
