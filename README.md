# icecast
Icecast for Docker, latest version.

Configuration:
Edit required fields in icecast.xml and mount it inside the container.

Example docker-compose.yml:
```
icecast:
  container_name: icecast
  image: infiniteproject/icecast
  ports:
    - "8000:8000"
  volumes:
    ./icecast.xml:/etc/icecast/icecast.xml
```
