# easyss server 
# usage:
# 
# docker run -it -d --name easyss -p 8080:8080 nange/docker-easyss:latest -p 8080 -k yourpassword -s yourdomain.com
#

FROM ubuntu:latest

LABEL maintainer=LanceLi

WORKDIR /tmp

RUN apt-get update

RUN apt-get install -y zip wget

RUN wget "https://github.com/nange/easyss/releases/download/v1.1.2/remote-server-linux64.zip"

RUN unzip remote-server-linux64.zip && rm remote-server-linux64.zip

RUN mkdir -p /opt/easyss

RUN mv ./remote-server /opt/easyss

RUN chmod +x /opt/easyss/remote-server

ENTRYPOINT ["/opt/easyss/remote-server"]
