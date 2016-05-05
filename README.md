# icecast
Icecast 2 for Docker based off Debian linux. [![Build Status](https://travis-ci.org/infiniteproject/icecast.svg?branch=master)](https://travis-ci.org/infiniteproject/icecast)

Edit required fields in icecast.xml and mount it inside the container replacing default configuration file.

Example docker-compose.yml:
```
icecast:
  container_name: icecast
  image: infiniteproject/icecast
  ports:
    - 8000:8000
  volumes:
    ./icecast.xml:/etc/icecast/icecast.xml
```
