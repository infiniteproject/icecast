FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 liquidsoap && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN chown -R icecast2 /etc/icecast2 
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

VOLUME /etc/icecast2
EXPOSE 8000

USER icecast2
CMD ["icecast2 -c /etc/icecast2/icecast.xml"]
