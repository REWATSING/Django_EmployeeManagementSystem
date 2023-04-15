#!/bin/bash

# Install NGINX
sudo apt update
sudo apt install -y nginx

# Copy the NGINX config file to the appropriate location
sudo cp nginx.conf /etc/nginx/sites-available/default

# Reload NGINX to apply the new config
sudo systemctl reload nginx
