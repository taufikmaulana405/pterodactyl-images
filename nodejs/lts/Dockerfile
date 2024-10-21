# Import base image
FROM node:lts

# Environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN curl --silent --location https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install --no-install-recommends \
    curl \
    ffmpeg \
    iproute2 \
    git \
    sqlite3 \
    ca-certificates \
    dnsutils \
    build-essential \
    locales \
    htop \
    google-chrome-stable \
    fonts-ipafont-gothic \
    fonts-wqy-zenhei \
    fonts-thai-tlwg \
    fonts-kacst \
    fonts-freefont-ttf\
    libxss1 \
    && npm -g install npm@latest \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && adduser --disabled-password --home  /home/container container

# Set user and workdir
USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

# Set entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]