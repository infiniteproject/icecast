FROM alpine:latest

MAINTAINER infiniteproject@gmail.com

RUN apk add --update icecast && rm -rf /var/cache/apk/*

CMD ["rc service icecast restart"]
