#!/bin/sh
set -e
. ./.env

# Push images
docker push 0installnet/0install:$ZEROINSTALL_VERSION
docker push 0installnet/0publish:$ZEROPUBLISH_VERSION
docker push 0installnet/0release:$ZERORELEASE_VERSION
docker push 0installnet/0compile:$ZEROCOMPILE_VERSION
docker push 0installnet/0template:$ZEROTEMPLATE_VERSION
docker push 0installnet/0watch:$ZEROWATCH_VERSION
docker push 0installnet/0repo:$ZEROREPO_VERSION

# Push "latest" aliases
docker push 0installnet/0install
docker push 0installnet/0publish
docker push 0installnet/0release
docker push 0installnet/0compile
docker push 0installnet/0template
docker push 0installnet/0watch
docker push 0installnet/0repo
