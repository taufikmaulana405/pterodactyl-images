# Import base image
FROM    bellsoft/liberica-openjdk-debian:latest-cds

# Installing Dependencies
RUN     apt-get update -y \
        && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        openssl \
        git \
        tar \
        sqlite3 \
        fontconfig \
        libfreetype6 \
        libstdc++6 \
        lsof \
        build-essential \
        tzdata \
        iproute2 \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && useradd -m -d /home/container container

USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]