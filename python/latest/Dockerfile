# Import the base image
FROM	python:latest

# Set the environment variables
ENV	DEBIAN_FRONTEND=noninteractive \
        USER_NAME=container \
        GROUP_NAME=container \
        WORKDIR=/home/container

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
		&& adduser --disabled-password --home ${WORKDIR} ${USER_NAME}

# Set the user and workdir
USER	${USER_NAME}
ENV	USER=${USER_NAME} \
        HOME=${WORKDIR}
WORKDIR	${WORKDIR}

# Set the entrypoint
COPY	./entrypoint.sh /entrypoint.sh
CMD		[ "/bin/bash", "/entrypoint.sh" ]