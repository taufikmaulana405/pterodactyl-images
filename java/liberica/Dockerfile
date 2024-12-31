# Import base image
FROM    bellsoft/liberica-openjdk-debian:latest-cds

# Set environment variables
ENV     USER_NAME=container \
        GROUP_NAME=container \
        WORKDIR=/home/container

# Installing Dependencies
RUN     apt-get update -y \
        && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        openssl \
        tar \
        sqlite3 \
        fontconfig \
        libfreetype6 \
        libstdc++6 \
        lsof \
        build-essential \
        iproute2 \
        htop \
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && adduser --disabled-password --home  ${WORKDIR} ${USER_NAME}

# Set user and workdir
USER    ${USER_NAME}
ENV     USER=${USER_NAME} \
        HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]