# Import base image
FROM node:latest

# Environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install --no-install-recommends \
    curl \
    ffmpeg \
    iproute2 \
    git \
    sqlite3 \
    python3 \
    tzdata \
    ca-certificates \
    dnsutils \
    build-essential \
    locales \
    && npm -g install npm@latest \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -m -d /home/container container

# Set user and workdir
USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

# Copy entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]