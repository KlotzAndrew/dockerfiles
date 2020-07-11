FROM buildpack-deps:stable-curl

RUN apt-get update \
	&& apt-get install -qqy --no-install-recommends python python-pip python-setuptools python-all-dev groff less mime-support \
	&& pip install --upgrade awscli \
	&& apt-get purge -qqy python-pip python-all-dev \
	&& curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb" \
	&& dpkg -i session-manager-plugin.deb \
	&& rm session-manager-plugin.deb \
	&& apt-get autoremove -qqy \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aws"]
