FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*
RUN rc-update add icecast

ENTRYPOINT ["rc", "service", "icecast", "restart"]
