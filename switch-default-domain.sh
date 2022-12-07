#!/bin/bash

#sed -i.bakup  '/DOMAIN=bitfinextr.com/d' ./.env.development
#rm ./.env.development.bakup

rm -rf ./node_modules/.cache
sed -i.bakup 's/export const bfxDomain = DOMAINS.tr/export const bfxDomain = process.env.DOMAIN || getBfxDomain()/' ./src/local_modules/bfxuilib/var/platform.js
rm ./src/local_modules/bfxuilib/var/platform.js.bakup
