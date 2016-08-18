# Docker Wordpress Development

[![](https://imagelayers.io/badge/digiplant/wordpress-development:latest.svg)](https://imagelayers.io/?images=digiplant/wordpress-development:latest 'Get your own badge on imagelayers.io')

This image is a good starting point for developing wordpress themes and plugins.
It shows php's errors so that you can find bugs and it has XDebug so that you can debug your code via webstorm / intellij.

> **NOTE** This is not intended to be used in production. It is intended to be used as a dev setup for those creating themes / plugins.

## WordPress
This image is a fork of WordPress official image.

## PHP 7
The official WordPress image doesn't run on PHP-7, but this one does.
PHP has show all errors enables

## XDebug
Xdebug 2.4 is installed and configured to listen to port `9999` and the IDEKey `docker`

# How to use
Check the example folder

## Access MariaDB (MySql)
To access mysql you use a database program such as Navicat or Sequel Pro.
```
host: localhost
port: 3306
user: root
password: 42
```
you can now use Navicats data transfer functionality to copy a existing db into docker.

# Development
Development specific commands and info

```
docker build wordpress -t digiplant/wordpress-development
docker build nginx -t digiplant/wordpress-nginx-development


docker push digiplant/wordpress-development
docker push digiplant/wordpress-nginx-development

```

