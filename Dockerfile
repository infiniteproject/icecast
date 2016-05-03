FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*

ENTRYPOINT ["icecast", "-c", "/etc/icecast/icecast.xml"]
