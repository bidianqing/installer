#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -

sudo yum install nodejs -y

node --version

npm --version