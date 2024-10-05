# Import base image
FROM 	ubuntu:18.04

# Environment variables
ENV 	DEBIAN_FRONTEND=noninteractive

# Install packages
RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install -y \
		ca-certificates \
		iproute2 \
		curl \
		htop \
		tzdata \
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