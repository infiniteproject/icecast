FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint.sh entrypoint.sh

VOLUME ["/etc/icecast2", "/var/log/icecast2"]
USER icecast2

ENTRYPOINT ["entrypoint.sh"]
CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
