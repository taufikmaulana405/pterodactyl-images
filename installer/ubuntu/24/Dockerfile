# Import base image
FROM    ubuntu:24.04

# Environment variables
ENV     DEBIAN_FRONTEND=noninteractive

# Install packages
RUN	apt-get update \
        && apt-get upgrade -y \
        && apt-get -y --no-install-recommends install \
        ca-certificates \
        curl \
        git \
        iproute2 \
        wget