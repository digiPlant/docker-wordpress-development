FROM nginx:mainline-alpine

# Proxy conf
COPY ./proxy_params /etc/nginx/proxy_params

# Nginx config
COPY default.conf /etc/nginx/conf.d/default.conf
