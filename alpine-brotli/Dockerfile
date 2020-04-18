FROM golang:1.13.5-stretch as builder

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

RUN apt update -y && \
  apt install -y git build-essential gcc make bc sed autoconf automake libtool git apt-transport-https

# cp docs/brotli.1 /usr/share/man/man1 && gzip /usr/share/man/man1/brotli.1
# man brotli
RUN git clone https://github.com/google/brotli.git && \
  cd brotli && \
  ./bootstrap && \
  ./configure \
  --prefix=/usr \
  --bindir=/usr/bin \
  --sbindir=/usr/sbin \
  --libexecdir=/usr/lib/brotli \
  --libdir=/usr/lib/brotli \
  --datarootdir=/usr/share \
  --mandir=/usr/share/man/man1 \
  --docdir=/usr/share/doc && \
  make && \
  make install

FROM alpine:3.11

RUN apk --no-cache add --update ca-certificates libc6-compat libstdc++

COPY --from=builder /usr/bin/brotli /usr/bin/brotli
COPY --from=builder /usr/lib/brotli /usr/lib/brotli
