# Import base image
FROM 	ubuntu:latest

# Environment variables
ENV 	DEBIAN_FRONTEND=noninteractive

# Install packages
RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install -y \
		ca-certificates \
		iproute2 \
		tzdata \
		curl \
		&& adduser -D -h /home/container container

# Set user and workdir
USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

# Copy entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]