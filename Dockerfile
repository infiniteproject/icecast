FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/icecast2", "/var/log/icecast2"]
EXPOSE 8000
COPY ./docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

USER icecast2
CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
