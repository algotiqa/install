#!/bin/sh

cp ../data-collector/config/*   data-collector/config
cp ../event-store/config/*      event-store/config
cp ../gateway/config/*          gateway/config
cp ../inventory-server/config/* inventory-server/config
cp ../portfolio-trader/config/* portfolio-trader/config
cp ../storage-manager/config/*  storage-manager/config
cp ../system-adapter/config/*   system-adapter/config

cp ../environment/identity-provider/config/* keycloak/config
cp ../environment/identity-provider/algotiqa-realm.json keycloak/import
cp ../environment/certificate/browser.p12 .
cp -a ../storage-manager/default storage-manager

find . -type f -name "server.key" -exec chmod ugo+r {} +
