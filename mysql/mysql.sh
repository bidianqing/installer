#!/bin/bash

curl -R -O https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm

sudo yum install mysql80-community-release-el7-3.noarch.rpm -y

sudo yum install mysql-community-server -y

systemctl start mysqld
systemctl enable mysqld
systemctl status mysqld

sudo grep 'temporary password' /var/log/mysqld.log
