
FROM node:10.18-buster-slim

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

RUN apt-get update -y && apt-get install -y \
  awscli \
  git \
  curl \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*
