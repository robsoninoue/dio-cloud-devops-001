#!/bin/bash

# Server update

apt-get update
apt-get upgrade -y

# Install apache 2

apt-get install apache2 -y

# Install unzip

apt-get install unzip -y

# Download app

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Inflate file

unzip main.zip

# Copy files to apache public folder

cd linux-site-dio-main
cp -R * /var/www/html