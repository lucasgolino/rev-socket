FROM alpine:edge
MAINTAINER "Golinux <lucas@golinux.space>"

ENV OVPN_ENABLE=true
ENV OVPN_CONFIG_NAME=client
ENV SSH_KEYNAME=client
ENV SSH_USER=root
ENV SSH_HOST=10.8.0.1
ENV SOCK_PORT=2377
ENV RDOCKER_SOCK=/var/run/docker.sock

RUN apk add --no-cache openvpn git openssl bash openssh-client
RUN mkdir -p /opt/socket
RUN mkdir -p /dev/net

RUN mkdir -p /opt/socket-bin
copy ./bin /opt/socket-bin
RUN chmod +x /opt/socket-bin/*

ENTRYPOINT /opt/socket-bin/socket