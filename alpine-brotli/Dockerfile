FROM golang:1.18-stretch as builder

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

RUN apt update -y && \
  apt install -y git build-essential cmake gcc make bc sed autoconf automake libtool git apt-transport-https

RUN cd /usr/local && \
  git clone https://github.com/google/brotli && \
  cd brotli && mkdir out && cd out && \
  ../configure-cmake \
  && make \
  && make install

FROM alpine:3.11

RUN apk --no-cache add --update ca-certificates libc6-compat libstdc++

COPY --from=builder /usr/local/brotli/out/brotli /usr/bin/brotli
COPY --from=builder /usr/local/lib /usr/local/lib
