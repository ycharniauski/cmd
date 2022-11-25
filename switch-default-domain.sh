#!/bin/bash

rm -rf ./node_modules/.cache
sed -i.bakup 's/export const bfxDomain = DOMAINS.tr/export const bfxDomain = getBfxDomain()/' ./src/local_modules/bfxuilib/var/urls.js
rm ./src/local_modules/bfxuilib/var/urls.js.bakup
 
