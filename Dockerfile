# shadowsocks server 
# usage:
# 
# docker run -it -d --name ss-server -p 2025:2025 nange/docker-shadowsocks-go:latest -k yourpassword -m aes-256-cfb
#

FROM ubuntu:16.04

LABEL maintainer=LanceLi

WORKDIR /tmp

RUN apt update && apt install -y wget && apt install -y tar

RUN wget https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz

RUN tar zxvf shadowsocks-server.tar.gz && rm shadowsocks-server.tar.gz

RUN mkdir -p /opt/ss-server

RUN mv ./shadowsocks-server /opt/ss-server

EXPOSE 2025

ENTRYPOINT ["/opt/ss-server/shadowsocks-server", "-p", "2025", "-t", "3000"]

