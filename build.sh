#!/bin/sh
set -e
. ./.env

# Build images
docker build --build-arg ZEROINSTALL_VERSION=$ZEROINSTALL_VERSION --tag 0installnet/0install:$ZEROINSTALL_VERSION 0install
docker build --build-arg ZEROINSTALL_VERSION=$ZEROINSTALL_VERSION --build-arg ZEROPUBLISH_VERSION=$ZEROPUBLISH_VERSION --tag 0installnet/0publish:$ZEROPUBLISH_VERSION 0publish
docker build --build-arg ZEROPUBLISH_VERSION=$ZEROPUBLISH_VERSION --build-arg ZERORELEASE_VERSION=$ZERORELEASE_VERSION --tag 0installnet/0release:$ZERORELEASE_VERSION 0release
docker build --build-arg ZEROPUBLISH_VERSION=$ZEROPUBLISH_VERSION --build-arg ZEROCOMPILE_VERSION=$ZEROCOMPILE_VERSION --tag 0installnet/0compile:$ZEROCOMPILE_VERSION 0compile
docker build --build-arg ZEROPUBLISH_VERSION=$ZEROPUBLISH_VERSION --build-arg ZEROTEMPLATE_VERSION=$ZEROTEMPLATE_VERSION --tag 0installnet/0template:$ZEROTEMPLATE_VERSION 0template
docker build --build-arg ZEROTEMPLATE_VERSION=$ZEROTEMPLATE_VERSION --build-arg ZEROWATCH_VERSION=$ZEROWATCH_VERSION --tag 0installnet/0watch:$ZEROWATCH_VERSION 0watch
docker build --build-arg ZEROWATCH_VERSION=$ZEROWATCH_VERSION --build-arg ZEROREPO_VERSION=$ZEROREPO_VERSION --tag 0installnet/0repo:$ZEROREPO_VERSION 0repo

# Create "latest" aliases
docker tag 0installnet/0install:$ZEROINSTALL_VERSION 0installnet/0install
docker tag 0installnet/0publish:$ZEROPUBLISH_VERSION 0installnet/0publish
docker tag 0installnet/0release:$ZERORELEASE_VERSION 0installnet/0release
docker tag 0installnet/0compile:$ZEROCOMPILE_VERSION 0installnet/0compile
docker tag 0installnet/0template:$ZEROTEMPLATE_VERSION 0installnet/0template
docker tag 0installnet/0watch:$ZEROWATCH_VERSION 0installnet/0watch
docker tag 0installnet/0repo:$ZEROREPO_VERSION 0installnet/0repo
