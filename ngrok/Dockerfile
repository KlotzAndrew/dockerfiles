FROM alpine:3.7

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

ENV HOME /root

RUN apk add --no-cache curl \
	&& curl -Lo /ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
	&& unzip /ngrok.zip -d /bin \
	&& rm -f /ngrok.zip

COPY ngrok.yml $HOME/.ngrok2/

EXPOSE 4040
