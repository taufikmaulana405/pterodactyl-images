# Import the base image
FROM	python:latest

# Set the environment variables
ENV		DEBIAN_FRONTEND=noninteractive

# Installing Depedencies
RUN		apt-get update -y \
        && apt-get upgrade -y \
        && apt-get install -y \
        ca-certificates \
        curl \
        ffmpeg \
        g++ \
        gcc \
        git \
        iproute2 \
        openssl \
        sqlite3 \
        tar \
        dnsutils \
        htop \
        && apt-get autoremove -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
		&& adduser --disabled-password --home  /home/container container

USER	container
ENV		USER=container HOME=/home/container
WORKDIR	/home/container

# Copy the entrypoint
COPY	./entrypoint.sh /entrypoint.sh

# Set the entrypoint
CMD		[ "/bin/bash", "/entrypoint.sh" ]