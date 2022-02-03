#!/bin/bash

rm -rf ./node_modules/.cache
sed -i.bakup 's/CI_ENVIRONMENT_NAME=production/CI_ENVIRONMENT_NAME=staging/' ./.env.development
rm ./.env.development.bakup
 
