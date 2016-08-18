#!/bin/bash
set -eo pipefail

# Build wordpress image
docker build wordpress -t digiplant/wordpress-development
docker build nginx -t digiplant/wordpress-nginx-development

# Push to hub
docker push digiplant/wordpress-development
docker push digiplant/wordpress-nginx-development
