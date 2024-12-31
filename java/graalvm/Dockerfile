# Import base image
FROM    ghcr.io/graalvm/jdk-community:latest

# Set the environment variables
ENV     USER_NAME=container \
        GROUP_NAME=container \
        WORKDIR=/home/container

# Installing Dependencies
RUN     microdnf update \
        && microdnf install -y \
        curl \
        ca-certificates \
        openssl \
        tar \
        sqlite \
        fontconfig \
        tzdata \
        iproute \
        gcc \
        gcc-c++ \
        freetype \
        libstdc++ \
        lsof \
        && microdnf clean all \
        && adduser --home-dir ${WORKDIR} ${USER_NAME}

# Set the user and workdir
USER    ${USER_NAME}
ENV     USER=${USER_NAME} \
        HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]