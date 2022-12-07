#!/bin/bash

# echo DOMAIN=bitfinextr.com >> ./.env.development

sed -i.bakup 's/export const bfxDomain = process.env.DOMAIN || getBfxDomain()/export const bfxDomain = DOMAINS.tr/' ./.env.development
rm ./.env.development.bakup
