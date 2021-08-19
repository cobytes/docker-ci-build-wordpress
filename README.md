# Clean Docker image for building WordPress on CI environments.

* Based on official PHP Alpine images (https://hub.docker.com/_/php).

## APT packages added

* ca-certificates
* build-base
* autoconf
* sudo
* curl
* rsync
* git
* openssh-client
* unzip
* tar
* freetype-dev
* libjpeg-turbo-dev
* libpng-dev
* libzip-dev
* libxml2-dev

## PHP extensions added

* gd
* zip
* bcmath
* soap

## (Build)Tools added

* Composer
* NodeJS (and NPM)
* WP-CLI

## NPM packages globally installed

* grunt
* yarn

## User / Group added

Default 'build' user and group added, all build commands are executed as this user.

## ENV variables changed/added

* `$COMPOSER_NO_INTERACTION`: set to `1`

## Available tags (corresponds to PHP version)

* 7.0
* 7.1
* 7.2
* 7.3
* 7.4
