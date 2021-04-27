#!/bin/bash

sudo yum install epel-release -y

sudo yum install redis -y

sudo systemctl start redis
sudo systemctl enable redis
