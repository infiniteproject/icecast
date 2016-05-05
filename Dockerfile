FROM debian:latest

MAINTAINER infiniteproject@gmail.com

RUN apt-get update && apt-get -y install icecast2 && apt-get clean && \
    rm -fr /var/lib/apt/lists/*

COPY icecast.xml /etc/icecast2/icecast.xml
RUN chown icecast2:icecast /etc/icecast2/icecast.xml

EXPOSE 8000 8001

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

USER icecast2
CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
