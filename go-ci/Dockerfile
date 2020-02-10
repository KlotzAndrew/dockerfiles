FROM golang:1.13.5-stretch

RUN apt-get update \
  && apt-get install -y \
  git xvfb apt jq \
  locales sudo openssh-client ca-certificates tar gzip parallel \
  net-tools netcat unzip zip bzip2 gnupg curl wget \
  build-essential awscli \
  && rm -rf /var/lib/apt/lists/*

# Set timezone to UTC by default
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

# Use unicode
RUN locale-gen C.UTF-8 || true
ENV LANG=C.UTF-8
