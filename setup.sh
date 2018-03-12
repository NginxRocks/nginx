#!/bin/bash

# Remove any existing nginx config files
rm /etc/nginx/sites-enabled/*

# Put our config files in /opt
mkdir -p /opt/
cd /opt/
git clone https://github.com/metaclassing/nginx.git

# Generate a unique diffie-hellman initialization prime & grab our crypto files.
#openssl dhparam -out /etc/ssl/private/dhparams.pem 2048

# Finally link our new global nginx config file to the etc sites enabled directory
ln -s /opt/nginx/nginx.conf /etc/nginx/sites-enabled/nginx.conf
