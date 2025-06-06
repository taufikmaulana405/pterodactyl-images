# Import the base image
FROM    php:8.4-fpm

# Set the environment variables
ENV     DEBIAN_FRONTEND=noninteractive
ENV     PS1="\u@\h:\w\\$ "
ENV     TZ="Asia/Jakarta"
ENV     COMPOSER_MEMORY_LIMIT='-1'
ARG     USER_NAME=container
ARG     USER_ID=998
ARG     WORKDIR=/home/${USER_NAME}

# Installing Depedencies
RUN     apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y --force-yes --no-install-recommends \
        git \
        nginx \
        ash \
        htop \
        adduser \
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rfv /var/lib/apt/lists/* \
        && adduser --disabled-password --home ${WORKDIR} ${USER_NAME}

# Install "install-php-extensions"
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install PHP extensions
RUN install-php-extensions \
        bcmath \
        exif \
        gd \
        gmp \
        imagick \
        intl \
        memcached \
        mongodb \
        mysqli \
        pcntl \
        pdo_mysql \
        pdo_pgsql \
        redis \
        soap \
        zip

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
RUN     ln -s /usr/local/sbin/php-fpm /usr/sbin/php-fpm8

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

# Copy the php.ini
COPY     ./local.ini /usr/local/etc/php/conf.d

# Set user and workdir
USER    ${USER_NAME}
ENV     USER=${USER_NAME} HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set the entrypoint
COPY    ./entrypoint-nginx.sh /entrypoint.sh
CMD     ["/bin/bash", "/entrypoint.sh"]