# Docker Images for Pterodactyl Eggs
This repository contains dockerfiles for Pterodactyl eggs. The docker files are based on the official images from the software developers. The images are optimized for use with Pterodactyl Panel. These images are rebuilt at 17:00 on the 1st and 15th day of the month.

## Supported Images

### PHP
- Designed for use Web Applications
- Extensions: 

| Module PHP                     | PHP 8.3 | PHP 8.2 | PHP 8.1 | PHP 8.0 | PHP 7.4 | PHP 7.3 | PHP 7.2 | PHP 7.1 |
| ------------------------------ | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
| soap                           |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| exif                           |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| pcntl                          |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| intl                           |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| gmp                            |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| zip                            |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| pdo_mysql                      |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| pdo_pgsql                      |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| bcmath                         |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| redis                          |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ❌   |    ❌   |   ❌   |
| mongodb                        |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ❌   |   ❌   |    ❌   |   ❌   |
| imagick                        |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| gd                             |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |
| gd --with-freetype --with-jpeg |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ❌   |   ❌   |    ❌   |   ✔️   |
| xdebug                         |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ❌   |   ❌   |    ❌   |   ❌   |
| memcached                      |   ✔️   |    ✔️   |   ✔️   |   ✔️    |    ✔️   |   ✔️   |    ✔️   |   ✔️   |

- Tested:
    - [Wordpress](https://wordpress.org/)
    - [Laravel](https://laravel.com/)
    - [Panel Pterodactyl](https://pterodactyl.io/)
    - [Azuriom](https://azuriom.com/)
- Tags:
    - PHP 7.1
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.1`
    - PHP 7.1 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.1-nginx`
    - PHP 7.2
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.2`
    - PHP 7.2 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.2-nginx`
    - PHP 7.3
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.3`
    - PHP 7.4 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.3-nginx`
    - PHP 7.4
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.4`
    - PHP 7.4 With Nginx
        - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.4-nginx`
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

### NodeJS
- Tags:
    - NodeJS Latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:nodejs`
    - NodeJS LTS (Long Term Support)
        - `ghcr.io/taufikmaulana405/pterodactyl-images:nodejs_lts`

### Java
- Tags:
    - Latest (Java Eclipse)
        - `ghcr.io/taufikmaulana405/pterodactyl-images:java`
    - Java GraalVM Latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:java_graalvm`
    - Java Liberica Latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:java_liberica`

### Python
- Tags:
    - Python Latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:python`

### Ubuntu
- Tags:
    - Ubuntu latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu`
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
    
### Installer
- Tags:
    - Ubuntu latest
        - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu`
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

## Development
- Building the image
    ```sh
    # Enter the image folder
    cd php
    # Build the image by customizing the image version and tags you want to build
    docker image build -f "8.3-nginx/Dockerfile" -t tes-image:php8.3-nginx .
    ```