#!/bin/bash

cat > /etc/yum.repos.d/wandisco-git.repo <<EOF
[wandisco-git]
name=Wandisco GIT Repository
baseurl=http://opensource.wandisco.com/centos/7/git/$basearch/
enabled=1
gpgcheck=1
gpgkey=http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco
EOF

yum install -y git

git --version