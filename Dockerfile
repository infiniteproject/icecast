FROM alpine:latest
MAINTAINER infiniteproject@gmail.com

RUN apk add --update \
    icecast \
    mailcap && \
    rm -rf /var/cache/apk/*
    
RUN adduser -S icecast && \
    addgroup -S icecast

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
