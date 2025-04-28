# Import base image
FROM ubuntu:22.04

# Set environment variables
ARG USER_NAME=container
ARG GROUP_NAME=container
ARG USER_ID=1000
ARG GROUP_ID=1000
ARG WORKDIR=/home/${USER_NAME}
ARG BIN_DIR=/usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="Asia/Jakarta"

# install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    git \
    htop \
    adduser \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && adduser --disabled-password --home ${WORKDIR} ${USER_NAME}

# install frankenphp
RUN curl https://frankenphp.dev/install.sh | sh -

# copy phpcall for support php-cli command
COPY --chmod=755 ./phpcall.sh ${BIN_DIR}/php

# install composer
RUN curl https://getcomposer.org/installer -o /tmp/composer-setup.php && \
    php /tmp/composer-setup.php --install-dir=${BIN_DIR} --filename=composer && \
    rm -rf /tmp/composer-setup.php

# Set the user and workdir
USER    ${USER_NAME}
ENV     USER=${USER_NAME} HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set the entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     ["/bin/bash", "/entrypoint.sh"]