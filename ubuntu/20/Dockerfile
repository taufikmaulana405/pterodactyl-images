# Import base image
FROM 	ubuntu:20.04

# Environment variables
ENV 	DEBIAN_FRONTEND=noninteractive \
		USER_NAME=container \
		GROUP_NAME=container \
		WORKDIR=/home/container

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
		&& adduser --disabled-password --home ${WORKDIR} ${USER_NAME}

# Set user and workdir
USER	${USER_NAME}
ENV		USER=${USER_NAME} \
		HOME=${WORKDIR}
WORKDIR	${WORKDIR}

# Set entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]