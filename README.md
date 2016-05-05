# icecast
Icecast 2 for Docker based off Debian linux.

Edit required fields in icecast.xml and mount it inside the container replacing default configuration file or pass required env variables in docker-compose.yml or via -e.

ICECAST_SOURCE_PASSWORD
ICECAST_ADMIN_PASSWORD

Example docker-compose.yml:
```
icecast:
  container_name: icecast
  image: infiniteproject/icecast
  ports:
    - "8000:8000"
    - "8001:8001"
  volumes:
    ./icecast.xml:/etc/icecast.xml
  environment:
    - ICECAST_SOURCE_PASSWORD=hackme
    - ICECAST_ADMIN_PASSWORD=hackmemore
```
