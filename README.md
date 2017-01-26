# docker-shadowsocks-go
shadowsocks-go Dockerfile，基于https://github.com/shadowsocks/shadowsocks-go 二进制构建。

## 使用方法

docker run -it -d --name ss-server -p 2025:2025 nange/docker-shadowsocks-go:latest -k yourpassword -m aes-256-cfb

目前最新版本是1.2.1,会持续更新最新版本发布。
