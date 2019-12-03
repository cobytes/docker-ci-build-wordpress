# Clean Docker image for building WordPress on CI environments.

* Based on official PHP Alpine images (https://hub.docker.com/_/php).

## APT packages added

* ca-certificates
* curl
* openssh-client
* rsync
* git
* unzip
* tar
* sudo

## PHP extensions added

No extra extensions added on top of the base PHP images.

## (Build)Tools added

* Composer
* NodeJS (and NPM)
* WP-CLI

## NPM packages globally installed

* grunt
* yarn

## Composer packages globally installed

* [composer](https://getcomposer.org/) (of course)
* [hirak/prestissimo](https://github.com/hirak/prestissimo) which speeds up composer install
* [jakub-onderka/php-parallel-lint](https://github.com/JakubOnderka/PHP-Parallel-Lint) which tests PHP syntax in parallel
* [nette/code-checker](https://github.com/nette/code-checker) which checks for coding style and template error in Nette framework
 
## User / Group added

Default 'build' user and group added, all build commands are executed as this user.

## ENV variables changed/added

* `$COMPOSER_NO_INTERACTION`: set to `1`

## Available tags (corresponds to PHP version)

* 7.0
* 7.1
* 7.2
* 7.3
