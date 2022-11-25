#!/bin/bash

rm -rf ./node_modules/.cache
sed -i.bakup 's/export const bfxDomain = getBfxDomain()/export const bfxDomain = DOMAINS.tr/' ./src/local_modules/bfxuilib/var/urls.js
rm ./src/local_modules/bfxuilib/var/urls.js.bakup
 
