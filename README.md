# Docker Images for Pterodactyl Eggs
This repository contains dockerfiles for Pterodactyl eggs. The docker files are based on the official images from the software developers. The images are optimized for use with Pterodactyl Panel. These images are rebuilt at 17:00 on the 1st and 15th day of the month.

## Supported Images

### PHP
- Designed for use Web Applications
- Extensions: 
    - soap
    - exif
    - pcntl
    - intl
    - gmp
    - zip
    - pdo_mysql
    - mysqli
    - pdo_pgsql
    - bcmath
    - redis
    - mongodb
    - imagick
    - gd
    - xdebug
    - memcached
- Tested:
    - [Wordpress](https://wordpress.org/)
    - [Laravel](https://laravel.com/)
    - [Panel Pterodactyl](https://pterodactyl.io/)
- Tags:
    - PHP 8.0
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.0`
    - PHP 8.0 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.0-nginx`
    - PHP 8.1
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.1`
    - PHP 8.1 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.1-nginx`
    - PHP 8.2
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.2`
    - PHP 8.2 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.2-nginx`
    - PHP 8.3
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.3`
    - PHP 8.3 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.3-nginx`
- Eggs:
    - [Host Web Using Nginx and PHP](https://github.com/Sigma-Production/ptero-eggs)

### Ubuntu
- Tags
    - Ubuntu latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_latest`
    - Ubuntu 24
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_24`
    - Ubuntu 23
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_23`
    - Ubuntu 22
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_22`
    - Ubuntu 20
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_20`
    - Ubuntu 18
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_18`
    
### Installer Image
- Tags
    - Ubuntu latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_latest`
    - Ubuntu 24
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_24`
    - Ubuntu 23
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_23`
    - Ubuntu 22
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_22`
    - Ubuntu 20
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_20`
    - Ubuntu 18
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_18`