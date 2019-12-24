FROM debian:stretch
LABEL maintainer="HashShareCoin Developers <dev@hashsharecoin.org>"
LABEL description="Dockerised HashShareCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
