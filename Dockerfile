FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 liquidsoap && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN chown -R icecast2 /etc/icecast2
USER icecast2
CMD ["icecast2 -c /etc/icecast2/icecast.xml"]
