#!/bin/bash
set -eo pipefail

# Pull new versions of deps
docker pull nginx:mainline-alpine
docker pull wordpress:4.7-php7.0-fpm

# Build wordpress image
docker build wordpress -t digiplant/wordpress-development
docker build nginx -t digiplant/wordpress-development-nginx

# Build wordpress composer image
docker build composer-wordpress -t digiplant/wordpress-development-composer
docker build composer-nginx -t digiplant/wordpress-development-composer-nginx

# Push to hub
docker push digiplant/wordpress-development:latest
docker push digiplant/wordpress-development-nginx:latest

docker push digiplant/wordpress-development-composer:latest
docker push digiplant/wordpress-development-composer-nginx:latest
