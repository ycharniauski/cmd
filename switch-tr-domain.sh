#!/bin/bash

sed -i.bakup 's/export const bfxDomain = process.env.DOMAIN || getBfxDomain()/export const bfxDomain = DOMAINS.tr/' ./src/local_modules/bfxuilib/var/platform.js
rm ./src/local_modules/bfxuilib/var/platform.js.bakup
 

# echo DOMAIN=bitfinextr.com >> ./.env.development