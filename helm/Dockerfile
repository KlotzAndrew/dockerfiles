FROM alpine:latest

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

ENV HELM_VERSION=v2.11.0
ENV HELM_FILENAME=helm-${HELM_VERSION}-linux-amd64.tar.gz

RUN apk add --update ca-certificates \
  && apk add --update -t deps curl \
  && curl -L https://storage.googleapis.com/kubernetes-helm/${HELM_FILENAME} | tar xz \
  && mv linux-amd64/helm /bin/helm \
  && apk del --purge deps \
  && rm /var/cache/apk/*

CMD ["helm"]
