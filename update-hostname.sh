#!/bin/sh
# Substitui o placeholder no index.html pelo hostname real do container
sed -i "s/HOSTNAME_PLACEHOLDER/$(hostname)/g" /usr/share/nginx/html/index.html
