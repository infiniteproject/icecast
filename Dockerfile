FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 liquidsoap && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /etc/icecast2
VOLUME /var/log/icecast2
COPY icecast.xml /etc/icecast2/icecast.xml
RUN chown -R icecast2 /etc/icecast2

USER icecast2
CMD ["icecast2 -c /etc/icecast2/icecast.xml"]
