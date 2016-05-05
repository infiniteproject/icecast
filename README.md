[![Build Status](https://travis-ci.org/infiniteproject/icecast.svg?branch=master)](https://travis-ci.org/infiniteproject/icecast)
# icecast
Icecast 2 for Docker based off Debian linux.
Edit required fields in icecast.xml and mount it inside the container replacing default configuration file or pass environment variable listed in the example (mandatory to change user to icecast2:icecast, done in entrypoint).

Example docker-compose.yml:
```
icecast:
  container_name: icecast
  image: infiniteproject/icecast
  ports:
    - 8000:8000
  volumes:
    ./icecast.xml:/etc/icecast/icecast.xml
  environment:
```
