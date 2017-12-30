FROM tvial/docker-mailserver:latest

RUN apt-get update -q --fix-missing && \
    apt-get -y install \
      dovecot-mysql \
      postfix-mysql \
      && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*

