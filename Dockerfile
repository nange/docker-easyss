# easyss server 
# usage:
# 
# docker run -it -d --name easyss -p 8080:8080 nange/docker-easyss:latest -p 8080 -k yourpassword
#

FROM ubuntu:latest

LABEL maintainer=LanceLi

WORKDIR /tmp

RUN apt update

RUN apt install -y zip wget libgtk-3-dev libappindicator3-dev

RUN wget "https://github.com/nange/easyss/releases/download/rc2/easyss-linux64.zip"

RUN unzip easyss-linux64.zip && rm easyss-linux64.zip

RUN mkdir -p /opt/easyss

RUN mv ./easyss /opt/easyss && mv ./config.json /opt/easyss

RUN chmod +x /opt/easyss/easyss

ENTRYPOINT ["/opt/easyss/easyss", "-server"]
