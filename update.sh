#!/bin/bash
set -eo pipefail

# Build wordpress image
docker build wordpress -t digiplant/wordpress-development
docker build nginx -t digiplant/wordpress-development-nginx

# Build wordpress composer image
docker build composer-wordpress -t digiplant/wordpress-development-composer
docker build composer-nginx -t digiplant/wordpress-development-composer-nginx

# Push to hub
docker push digiplant/wordpress-development
docker push digiplant/wordpress-development-nginx

docker push digiplant/wordpress-development-composer
docker push digiplant/wordpress-development-composer-nginx
