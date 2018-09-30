FROM google/cloud-sdk:218.0.0

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

ENV HELM_VERSION=v2.11.0
ENV HELM_FILENAME=helm-${HELM_VERSION}-linux-amd64.tar.gz

RUN curl -L https://storage.googleapis.com/kubernetes-helm/${HELM_FILENAME} | tar xz \
	&& mv linux-amd64/helm /bin/helm \
	&& rm -rf linux-amd64

CMD ["helm"]
