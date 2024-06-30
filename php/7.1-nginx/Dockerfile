# Import the base image
FROM    php:7.1-fpm

# Set the environment variables
ENV     DEBIAN_FRONTEND=noninteractive
ENV     PS1="\u@\h:\w\\$ "
ENV     TZ="Asia/Jakarta"
ENV     USER_NAME=container
ENV     GROUP_NAME=container
ENV     USER_ID=1000
ENV     GROUP_ID=1000
ARG     WORKDIR=/home/container
ENV     COMPOSER_HOME=${WORKDIR}/.composer
ENV     COMPOSER_MEMORY_LIMIT='-1'
ENV     PATH=${PATH}:${WORKDIR}/vendor/bin

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
        openssh-server \
        libmagickwand-dev \
        git \
        libxml2-dev \
        nginx \
        ash \
        && apt-get clean \
        && rm -rfv /var/lib/apt/lists/*

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
# Imagick:
#####################################

RUN     pecl install imagick && \
        docker-php-ext-enable imagick

#####################################
# GD:
#####################################

# Install the PHP gd library
RUN     docker-php-ext-install gd && \
        docker-php-ext-configure gd --with-freetype --with-jpeg && \
        docker-php-ext-install gd

#####################################
# PHP Memcached:
#####################################

# Install the php memcached extension
RUN     pecl install memcached && docker-php-ext-enable memcached

#####################################
# Composer:
#####################################

# Install composer and add its bin to the PATH.
RUN     curl -s http://getcomposer.org/installer | php && \
        echo "export PATH=${PATH}:/home/container/vendor/bin" >> ~/.bashrc && \
        mv composer.phar /usr/local/bin/composer

# Source the bash
RUN     . ~/.bashrc

#####################################
# Link the PHP-FPM to /usr/sbin/:
#####################################
RUN     ln -s /usr/local/sbin/php-fpm /usr/sbin/php-fpm
RUN     ln -s /usr/local/sbin/php-fpm /usr/sbin/php-fpm8

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

ADD     ./local.ini /usr/local/etc/php/conf.d
    
USER    ${USER_NAME}
ENV     USER=${USER_NAME} HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Copy the entrypoint
COPY    ./entrypoint-nginx.sh /entrypoint.sh

# Set the entrypoint
CMD     ["/bin/bash", "/entrypoint.sh"]