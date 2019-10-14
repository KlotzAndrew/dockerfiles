FROM alpine:latest

RUN apk --no-cache --update add \
	ca-certificates \
	groff \
	less \
	python \
	py2-pip \
	mailcap \
	&& pip install awscli \
	&& apk -v --purge del py-pip \
	&& mkdir -p /root/.aws

ENTRYPOINT ["aws"]
