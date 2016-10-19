# Docker Wordpress Development

[![](https://imagelayers.io/badge/digiplant/wordpress-development:latest.svg)](https://imagelayers.io/?images=digiplant/wordpress-development:latest 'Get your own badge on imagelayers.io')

This image is a good starting point for developing wordpress themes and plugins.
It shows php's errors so that you can find bugs and it has XDebug so that you can debug your code via webstorm / intellij.

> **NOTE** This is not intended to be used in production. It is intended to be used as a dev setup for those creating themes / plugins.

## PHP 7
The official WordPress image doesn't run on PHP-7, but this one does.
PHP has show all errors enables

## XDebug
Xdebug 2.4 is installed and configured to listen to port `9999` and the IDEKey `docker`


# Usage
There are two versions, either you want to use composer as a base for your development, or you want a vanilla wordpress.

## Vanilla Wordpress
Uses wordpress own base image, but adds xdebug and debugging variables
Check the [Example](example) directory for usage instructions

## Composer Wordpress
Uses composer as a base for development, which installs wordpress via composer into /wp
It has a couple of workarounds to get it working with nginx.
Check the [Composer Example](composer-example) directory for usage instructions

# Access MariaDB (MySql)
To access mysql you use a database program such as Navicat or Sequel Pro.
```
host: localhost
port: 3306
user: root
password: 42
```
you can now use Navicats data transfer functionality to copy a existing db into docker.

# Development
to update to latest versions of wordpress and nginx run update script

```
./update.sh

```

