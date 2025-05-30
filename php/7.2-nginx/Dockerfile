# Import the base image
FROM    php:7.2-fpm

# Set the environment variables
ENV     DEBIAN_FRONTEND=noninteractive
ENV     PS1="\u@\h:\w\\$ "
ENV     TZ="Asia/Jakarta"
ENV     USER_NAME=container
ENV     GROUP_NAME=container
ENV     USER_ID=1000
ENV     GROUP_ID=1000
ARG     WORKDIR=/home/container
ENV     COMPOSER_MEMORY_LIMIT='-1'

# Installing Depedencies
RUN     apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y --force-yes --no-install-recommends \
        libmemcached-dev \
        libmcrypt-dev \
        libreadline-dev \
        libgmp-dev \
        libzip-dev \
        libz-dev \
        libpq-dev \
        libjpeg-dev \
        libpng-dev \
        libfreetype6-dev \
        libssl-dev \
        libmagickwand-dev \
        libxml2-dev \
        git \
        nginx \
        ash \
        htop \
        adduser \
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rfv /var/lib/apt/lists/* \
        && adduser --disabled-password --home ${WORKDIR} ${USER_NAME}

# Install soap extention
RUN     docker-php-ext-install soap

# Install for image manipulationdock
RUN     docker-php-ext-install exif

# Install the PHP pcntl extention
RUN     docker-php-ext-install pcntl

# Install the PHP intl extention
RUN     docker-php-ext-install intl

# Install the PHP gmp extention
RUN     docker-php-ext-install gmp

# Install the PHP zip extention
RUN     docker-php-ext-install zip

# Install the PHP pdo_mysql extention
RUN     docker-php-ext-install pdo_mysql

# Install the PHP mysqli extention
RUN     docker-php-ext-install mysqli

# Install the PHP pdo_pgsql extention
RUN     docker-php-ext-install pdo_pgsql

# Install the PHP bcmath extension
RUN     docker-php-ext-install bcmath

#####################################
# PHPRedis:
#####################################
RUN     pecl install redis-6.0.2 \
        && docker-php-ext-enable redis

#####################################
# MongoDB:
#####################################
RUN     pecl install mongodb-1.16.2 \
        && docker-php-ext-enable mongodb

#####################################
# Imagick:
#####################################

RUN     pecl install imagick \
        && docker-php-ext-enable imagick

#####################################
# GD:
#####################################

# Install the PHP gd library
RUN     docker-php-ext-install gd

#####################################
# PHP Memcached:
#####################################

# Install the php memcached extension
RUN     pecl install memcached \
        && docker-php-ext-enable memcached

#####################################
# Composer:
#####################################

# Install composer and add its bin to the PATH.
RUN     curl -s https://getcomposer.org/installer | php \
        && mv composer.phar /usr/local/bin/composer

#####################################
# Link the PHP-FPM to /usr/sbin/:
#####################################
RUN     ln -s /usr/local/sbin/php-fpm /usr/sbin/php-fpm
RUN     ln -s /usr/local/sbin/php-fpm /usr/sbin/php-fpm7

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

# Copy the php.ini
COPY     ./local.ini /usr/local/etc/php/conf.d

# Copy the nginx configuration
USER    ${USER_NAME}
ENV     USER=${USER_NAME} HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set the entrypoint
COPY    ./entrypoint-nginx.sh /entrypoint.sh
CMD     ["/bin/bash", "/entrypoint.sh"]