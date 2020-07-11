FROM alpine:latest

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

RUN apk --no-cache add --update netcat-openbsd
ADD serve.sh serve.sh
CMD ["./serve.sh"]
