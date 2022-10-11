#!/bin/bash

if [[ $1 == "src/local_modules/"* ]]; then
    echo ${1%src\/local_modules\/*}
fi