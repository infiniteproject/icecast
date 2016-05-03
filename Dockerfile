FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*

VOLUME ["/etc/icecast"]

ENTRYPOINT ["icecast", "-c", "/etc/icecast/icecast.conf"]
