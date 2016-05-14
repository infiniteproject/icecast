[![Build Status](https://travis-ci.org/infiniteproject/icecast.svg?branch=master)](https://travis-ci.org/infiniteproject/icecast)
# icecast
Icecast 2 for Docker based off Alpine linux.

Example run:
```
docker run -d -p 8000:8000 infiniteproject/icecast
```
You can provide a limited set of env variables via -e or in docker-compose.yml:

```
icecast:
  image: infiniteproject/icecast
  ports:
    - 8000:8000
  environment:
    - ICECAST_SOURCE_PASSWORD= 
    - ICECAST_ADMIN_PASSWORD=
    - ICECAST_RELAY_PASSWORD=
    - ICECAST_ADMIN_USERNAME=
    - ICECAST_ADMIN_EMAIL=
    - ICECAST_LOCATION=
    - ICECAST_HOSTNAME=
    - ICECAST_MAX_CLIENTS=
```
