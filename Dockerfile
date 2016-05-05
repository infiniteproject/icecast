FROM debian:latest

MAINTAINER infiniteproject@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install icecast2 liquidsoap liquidsoap-plugin-lame && apt-get clean && \
    rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/icecast2"]
EXPOSE 8000

COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chown -R icecast2:icecast /etc/icecast2/*

ENTRYPOINT ["/entrypoint.sh"]
