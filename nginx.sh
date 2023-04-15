#!/bin/bash

# Install NGINX
echo "833172" | sudo -S apt update
echo "833172" | sudo -S apt install -y nginx

# Copy the NGINX config file to the appropriate location
echo "833172" | sudo -S cp nginx.conf /etc/nginx/sites-available/default

# Reload NGINX to apply the new config
echo "833172" | sudo -S systemctl reload nginx
