FROM debian:latest

MANTAINER infiniteproject@gmail.com

RUN apt-get update && apt-get install -y icecast2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
COPY icecast.xml.sample /etc/icecast/icecast.xml
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
