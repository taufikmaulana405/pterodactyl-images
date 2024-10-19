# Docker Images for Pterodactyl Eggs

![GitHub Created At](https://img.shields.io/github/created-at/taufikmaulana405/pterodactyl-images)
![GitHub Actions check runs](https://img.shields.io/github/check-runs/taufikmaulana405/pterodactyl-images/master?logo=GitHub%20Actions&logoColor=white&label=CI%20Runs)
![GitHub repo size](https://img.shields.io/github/repo-size/taufikmaulana405/pterodactyl-images)

This repository contains dockerfiles for Pterodactyl eggs. The docker files are based on the official images from the software developers. The images are optimized for use with Pterodactyl Panel. These images are rebuilt at 17:00 on the 1st and 15th day of the month.

## Supported Images

### PHP

![GitHub Actions Workflow Status PHP](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/php.yml?logo=docker)

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
  - [![WordPress Badge](https://img.shields.io/badge/WordPress-21759B?logo=wordpress&logoColor=fff&style=plastic)](https://wordpress.org/)
  - [![Laravel Badge](https://img.shields.io/badge/Laravel-FF2D20?logo=laravel&logoColor=fff&style=plastic)](https://laravel.com/)
  - [![Pterodactyl Badge](https://img.shields.io/badge/Pterodactyl-10539F?logo=pterodactyl&logoColor=fff&style=plastic)](https://pterodactyl.io/)
  - [![Static Badge](https://img.shields.io/badge/Azuriom-a?logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA1MDAgNTAwIj4KICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0yMDEuMSA4LjFoOTcuMWwxODguMyA0ODYuNkgzOTB6Ii8%2BCiAgICA8cGF0aCBmaWxsPSIjZTJlMmUyIiBkPSJNMjQ5LjcgMTMzLjIgMjAxLjIgOC4xIDEyLjggNDk0LjdoOTYuNXoiLz4KICAgIDxwYXRoIGZpbGw9IiNjNmM2YzYiIGQ9Im0xMDkuMyA0OTQuNyA1My0xMzYuNSAxNDEuOS04NC41IDMzLjIgODUuNHoiLz4KPC9zdmc%2BCg%3D%3D&color=blue)](https://azuriom.com/)
- Tags:
  - PHP 7.1
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.1` \
      ![Image Size PHP 7.1](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.1&label=Size)
      ![Image Source Version PHP 7.1](https://img.shields.io/docker/v/_/php/7.1-fpm)
  - PHP 7.1 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.1-nginx` \
      ![Image Size PHP 7.1 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.1-nginx&label=Size)
      ![Image Source Version PHP 7.1](https://img.shields.io/docker/v/_/php/7.1-fpm)
  - PHP 7.2
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.2` \
      ![Image Size PHP 7.2](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.2&label=Size)
      ![Image Source Version PHP 7.2](https://img.shields.io/docker/v/_/php/7.2-fpm)
  - PHP 7.2 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.2-nginx` \
      ![Image Size PHP 7.2 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.2-nginx&label=Size)
      ![Image Source Version PHP 7.2](https://img.shields.io/docker/v/_/php/7.2-fpm)
  - PHP 7.3
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.3` \
      ![Image Size PHP 7.3](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.3&label=Size)
      ![Image Source Version PHP 7.3](https://img.shields.io/docker/v/_/php/7.3-fpm)
  - PHP 7.4 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.3-nginx` \
      ![Image Size PHP 7.3 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.3-nginx&label=Size)
      ![Image Source Version PHP 7.3](https://img.shields.io/docker/v/_/php/7.3-fpm)
  - PHP 7.4
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.4` \
      ![Image Size PHP 7.4](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.4&label=Size)
      ![Image Source Version PHP 7.4](https://img.shields.io/docker/v/_/php/7.4-fpm)
  - PHP 7.4 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php7.4-nginx` \
      ![Image Size PHP 7.4 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php7.4-nginx&label=Size)
      ![Image Source Version PHP 7.4](https://img.shields.io/docker/v/_/php/7.4-fpm)
  - PHP 8.0
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.0` \
      ![Image Size PHP 8.0](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.0&label=Size)
      ![Image Source Version PHP 8.0](https://img.shields.io/docker/v/_/php/8.0-fpm)
  - PHP 8.0 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.0-nginx` \
      ![Image Size PHP 8.0 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.0-nginx&label=Size)
      ![Image Source Version PHP 8.0](https://img.shields.io/docker/v/_/php/8.0-fpm)
  - PHP 8.1
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.1` \
      ![Image Size PHP 8.1](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.1&label=Size)
      ![Image Source Version PHP 8.1](https://img.shields.io/docker/v/_/php/8.1-fpm)
  - PHP 8.1 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.1-nginx` \
      ![Image Size PHP 8.1 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.1-nginx&label=Size)
      ![Image Source Version PHP 8.1](https://img.shields.io/docker/v/_/php/8.1-fpm)
  - PHP 8.2
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.2` \
      ![Image Size PHP 8.2](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.2&label=Size)
      ![Image Source Version PHP 8.2](https://img.shields.io/docker/v/_/php/8.2-fpm)
  - PHP 8.2 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.2-nginx` \
      ![Image Size PHP 8.2 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.2-nginx&label=Size)
      ![Image Source Version PHP 8.2](https://img.shields.io/docker/v/_/php/8.2-fpm)
  - PHP 8.3
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.3` \
      ![Image Size PHP 8.3](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.3&label=Size)
      ![Image Source Version PHP 8.3](https://img.shields.io/docker/v/_/php/8.3-fpm)
  - PHP 8.3 With Nginx
    - `ghcr.io/taufikmaulana405/pterodactyl-images:php8.3-nginx` \
      ![Image Size PHP 8.3 With Nginx](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=php8.3-nginx&label=Size)
      ![Image Source Version PHP 8.3](https://img.shields.io/docker/v/_/php/8.3-fpm)
- Eggs:
  - [Host Web Using Nginx and PHP](https://github.com/Sigma-Production/ptero-eggs)

### NodeJS

![GitHub Actions Workflow Status Nodejs](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/nodejs.yml?logo=docker)

- Tags:
  - NodeJS Latest
    - `ghcr.io/taufikmaulana405/pterodactyl-images:nodejs` \
      ![Image Size NodeJS Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=nodejs&label=Size)
      ![Image Source Version NodeJS](https://img.shields.io/docker/v/_/node/latest)
  - NodeJS LTS (Long Term Support)
    - `ghcr.io/taufikmaulana405/pterodactyl-images:nodejs_lts` \
      ![Image Size NodeJS LTS](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=nodejs_lts&label=Size)
      ![Image Source Version NodeJS](https://img.shields.io/docker/v/_/node/lts)

### Java

![GitHub Actions Workflow Status Java](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/java.yml?logo=docker)

- Tags:
  - Latest (Java Eclipse)
    - `ghcr.io/taufikmaulana405/pterodactyl-images:java` \
      ![Image Size Java Eclipse](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=java&label=Size)
      ![Image Source Version Java Eclipse](https://img.shields.io/docker/v/_/eclipse-temurin/latest)
  - Java GraalVM Latest
    - `ghcr.io/taufikmaulana405/pterodactyl-images:java_graalvm` \
      ![Image Size Java GraalVM Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=java_graalvm&label=Size)
  - Java Liberica Latest
    - `ghcr.io/taufikmaulana405/pterodactyl-images:java_liberica` \
      ![Image Size Java Liberica Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=java_liberica&label=Size)
      ![Image Source Version Java Liberica](https://img.shields.io/docker/v/bellsoft/liberica-openjdk-debian/latest-cds)

### Python

![GitHub Actions Workflow Status Python](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/python.yml?logo=docker)

- Tags:
  - Python Latest
    - `ghcr.io/taufikmaulana405/pterodactyl-images:python` \
      ![Image Size Python Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=python&label=Size)
      ![Image Source Version Python](https://img.shields.io/docker/v/_/python/latest)

### Ubuntu

![GitHub Actions Workflow Status Ubuntu](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/ubuntu.yml?logo=docker)

- Tags:
  - Ubuntu latest
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu` \
      ![Image Size Ubuntu Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/latest)
  - Ubuntu 24
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_24` \
      ![Image Size Ubuntu 24](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu_24&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/24.04)
  - Ubuntu 23
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_23` \
      ![Image Size Ubuntu 23](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu_23&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/23.04)
  - Ubuntu 22
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_22` \
      ![Image Size Ubuntu 22](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu_22&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/22.04)
  - Ubuntu 20
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_20` \
      ![Image Size Ubuntu 20](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu_20&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/20.04)
  - Ubuntu 18
    - `ghcr.io/taufikmaulana405/pterodactyl-images:ubuntu_18` \
      ![Image Size Ubuntu 18](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=ubuntu_18&label=Size)
      ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/18.04)

### Installer

- Ubuntu

    ![GitHub Actions Workflow Status Installer](https://img.shields.io/github/actions/workflow/status/taufikmaulana405/pterodactyl-images/ubuntu-installer.yml?logo=docker)

  - Tags:

    - Ubuntu latest
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu` \
        ![Image Size Ubuntu Installer Latest](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/latest)
    - Ubuntu 24
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_24` \
        ![Image Size Ubuntu Installer 24](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu_24&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/24.04)
    - Ubuntu 23
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_23` \
        ![Image Size Ubuntu Installer 23](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu_23&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/23.04)
    - Ubuntu 22
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_22` \
        ![Image Size Ubuntu Installer 22](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu_22&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/22.04)
    - Ubuntu 20
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_20` \
        ![Image Size Ubuntu Installer 20](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu_20&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/20.04)
    - Ubuntu 18
      - `ghcr.io/taufikmaulana405/pterodactyl-images:installer-ubuntu_18` \
        ![Image Size Ubuntu Installer 18](https://ghcr-badge.egpl.dev/taufikmaulana405/pterodactyl-images/size?tag=installer-ubuntu_18&label=Size)
        ![Image Source Version Ubuntu](https://img.shields.io/docker/v/_/ubuntu/18.04)

## Development

- Building the image

    ```sh
    # Enter the image folder
    cd php
    # Build the image by customizing the image version and tags you want to build
    docker image build -f "8.3-nginx/Dockerfile" -t tes-image:php8.3-nginx .
    ```
