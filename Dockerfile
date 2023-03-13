FROM haproxy:latest

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY crt-list.txt /etc/haproxy/crt-list.txt
COPY *.pem.rsa /etc/ssl/private/
# COPY *.pem.ecdsa /etc/ssl/private/

USER root

