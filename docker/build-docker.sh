#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-hashsharecoinpay/hashsharecoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/hashsharecoind docker/bin/
cp $BUILD_DIR/src/hashsharecoin-cli docker/bin/
cp $BUILD_DIR/src/hashsharecoin-tx docker/bin/
strip docker/bin/hashsharecoind
strip docker/bin/hashsharecoin-cli
strip docker/bin/hashsharecoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
