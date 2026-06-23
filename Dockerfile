FROM ubuntu:22.04

RUN apt update && 
 apt install -y squid && 
 rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf

EXPOSE 8888

CMD ["squid", "-N", "-d", "1"]
