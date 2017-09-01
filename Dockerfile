# easyss server 
# usage:
# 
# docker run -it -d --name easyss -p 8080:8080 nange/docke-easyss:latest -p 8080 -k yourpassword
#

FROM alpine:latest

LABEL maintainer=LanceLi

WORKDIR /tmp

RUN apk update

RUN apk add zip

RUN apk add openssl

RUN wget "https://github.com/nange/easyss/releases/download/beta2/easyss-linux64.zip"

RUN unzip easyss-linux64.zip && rm easyss-linux64.zip

RUN mkdir -p /opt/easyss

RUN mv ./easyss /opt/easyss

ENTRYPOINT ["/opt/easyss/easyss", "-server"]

