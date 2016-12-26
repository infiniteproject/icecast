FROM alpine:latest
MAINTAINER infiniteproject@gmail.com

RUN addgroup -S icecast && \
    adduser -S icecast
    
RUN apk add --update \
        icecast \
        mailcap && \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN mkdir -p /var/log/icecast

EXPOSE 8000
ENTRYPOINT ["/entrypoint.sh"]
CMD ["icecast", "-c", "/etc/icecast.xml"]
