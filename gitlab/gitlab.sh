#!/bin/bash

cat > /etc/yum.repos.d/gitlab-ee.repo <<EOF
[gitlab-ee]
name=gitlab-ee
baseurl=https://mirrors.tuna.tsinghua.edu.cn/gitlab-ee/yum/el7/
enabled=1
gpgcheck=0
repo_gpgcheck=0
gpgkey=https://packages.gitlab.com/gpg.key
EOF

yum install -y gitlab-ee
