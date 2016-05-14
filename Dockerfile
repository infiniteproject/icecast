FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*

COPY ./docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

<<<<<<< HEAD
RUN chown -R icecast2:icecast /etc/icecast2 /var/log/icecast2

=======
>>>>>>> alpine
ENTRYPOINT ["/entrypoint.sh"]
