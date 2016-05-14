FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*

COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
