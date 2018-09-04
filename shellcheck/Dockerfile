FROM debian:buster-slim

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

RUN apt-get update && apt-get install -y \
	file \
	shellcheck \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

CMD ["shellcheck"]
