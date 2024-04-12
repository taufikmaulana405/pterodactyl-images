# Import base image
FROM    amazoncorretto:latest

# Installing Dependencies
RUN     yum upgrade -y \
        && yum install -y curl ca-certificates openssl git tar sqlite fontconfig freetype libstdc++.so.6 freetype-devel lsof build-essential tzdata iproute \
        git gcc gcc-c++ automake make libtool \
        && yum clean all \
        && rm -rf /var/cache/yum \
        && useradd -m -d /home/container container

USER    container
ENV     USER=container HOME=/home/container
WORKDIR /home/container

COPY    ./entrypoint.sh /entrypoint.sh
CMD     [ "/bin/bash", "/entrypoint.sh" ]