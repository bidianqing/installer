#!/bin/bash

curl -R -O https://www.haproxy.org/download/2.1/src/haproxy-2.1.4.tar.gz
tar zxf haproxy-2.1.4.tar.gz
cd haproxy-2.1.4
yum install gcc -y
make TARGET=linux-glibc
sudo make install

sudo mkdir -p /etc/haproxy
sudo mkdir -p /var/lib/haproxy 
sudo touch /var/lib/haproxy/stats

sudo ln -s /usr/local/sbin/haproxy /usr/sbin/haproxy

cp ./examples/haproxy.init /etc/init.d/haproxy
sudo chmod 755 /etc/init.d/haproxy
sudo systemctl daemon-reload

cat > /etc/haproxy/haproxy.cfg <<EOF
global
    log /dev/log local0
    log /dev/log local1 notice
    daemon

defaults
    mode                    http
    log                     global
    option                  httplog
    option                  dontlognull
    option http-server-close
    option forwardfor       except 127.0.0.0/8
    option                  redispatch
    retries                 1
    timeout http-request    10s
    timeout queue           20s
    timeout connect         5s
    timeout client          20s
    timeout server          20s
    timeout http-keep-alive 10s
    timeout check           10s

frontend apiserver
    bind *:6443
    mode tcp
    default_backend apiserver

backend apiserver
    mode tcp
    balance     roundrobin
        server master1 172.16.15.239:6443 check
EOF

systemctl restart haproxy
systemctl status haproxy
