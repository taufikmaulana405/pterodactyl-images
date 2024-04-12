# Import base image
FROM    azul/zulu-openjdk:latest

# Environment variables
ENV     DEBIAN_FRONTEND noninteractive

# Installing Dependencies
RUN     apt-get update \
        && apt-get -y install --no-install-recommends curl ffmpeg iproute2 git sqlite3 python3 tzdata ca-certificates dnsutils fontconfig libfreetype6 libstdc++6 lsof build-essential \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && useradd -m -d /home/container container

USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]