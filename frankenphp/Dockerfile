ARG PHP_VERSION=${PHP_VERSION:-8.2}

# Import base image
FROM php:${PHP_VERSION}-zts-bookworm AS base

# Set environment variables
ARG USER_NAME=container
ARG GROUP_NAME=container
ARG USER_ID=998
ARG WORKDIR=/home/${USER_NAME}
ARG BIN_DIR=/usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="Asia/Jakarta"

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
	iproute2 \
    curl \
    wget \
    git \
    htop \
    adduser \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && adduser --disabled-password --home ${WORKDIR} --uid ${USER_ID} ${USER_NAME} \
    && usermod -aG www-data ${USER_NAME}

# Install "install-php-extensions"
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions ${BIN_DIR}

# Install PHP extensions and Composer
RUN install-php-extensions \
	@composer \
	bcmath \
	exif \
	gd \
	gmp \
	imagick \
	intl \
	memcached \
	mongodb \
	mysqli \
	pcntl \
	pdo_mysql \
	pdo_pgsql \
	redis \
	soap \
	zip

####################################################### BUILD

# Building frankenphp with split stages
FROM base AS builder

# Install dependencies for building frankenphp
RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	cmake \
    libargon2-dev \
	libbrotli-dev \
	libcurl4-openssl-dev \
	libonig-dev \
	libreadline-dev \
	libsodium-dev \
	libsqlite3-dev \
	libssl-dev \
	libxml2-dev \
	zlib1g-dev

# Install e-dant/watcher and build (necessary for file watching)
WORKDIR /usr/local/src/watcher
RUN curl -s https://api.github.com/repos/e-dant/watcher/releases/latest | \
	grep tarball_url | \
	awk '{ print $2 }' | \
	sed 's/,$//' | \
	sed 's/"//g' | \
	xargs curl -L | \
	tar xz --strip-components 1 && \
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Release && \
	cmake --build build && \
	cmake --install build && \
	ldconfig

# Install Golang
COPY --from=golang:1.24-bookworm /usr/local/go /usr/local/go
ENV PATH=/usr/local/go/bin:$PATH
ENV GOBIN=/usr/local/bin

# Install xcaddy
RUN go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

# Build frankenphp with xcaddy
RUN CGO_ENABLED=1 \
	XCADDY_GO_BUILD_FLAGS="-ldflags='-w -s' -tags=nobadger,nomysql,nopgx" \
	CGO_CFLAGS=$(php-config --includes) \
	CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs)" \
	xcaddy build \
		--output ${BIN_DIR}/frankenphp \
		--with github.com/dunglas/caddy-cbrotli \
		--with github.com/dunglas/frankenphp/caddy \
		--with github.com/dunglas/mercure/caddy \
		--with github.com/dunglas/vulcain/caddy
		# Add extra Caddy modules here

# # Build frankenphp with Compile From Source
# WORKDIR /go/src/app

# # Download Source Code Latest FrankenPHP
# RUN curl -s https://api.github.com/repos/dunglas/frankenphp/releases/latest | \
# 		grep tarball_url | \
# 		awk '{ print $2 }' | \
# 		sed 's/,$//' | \
# 		sed 's/"//g' | \
# 		xargs curl -L | \
# 	tar xz --strip-components 1

# WORKDIR /go/src/app/caddy/frankenphp
# RUN CGO_CFLAGS=$(php-config --includes) CGO_LDFLAGS="$(php-config --ldflags) $(php-config --libs)" go install -tags 'nobadger,nomysql,nopgx' -buildvcs=true

####################################################### FINAL

# Back to base image
FROM base AS final

# Set environment variables
ENV GODEBUG=cgocheck=0

# Copy watcher shared library
COPY --from=builder /usr/local/lib/libwatcher* /usr/local/lib/
RUN ldconfig

# Copy frankenphp binary
COPY --from=builder ${BIN_DIR}/frankenphp ${BIN_DIR}/frankenphp

# Set the user and workdir
USER    ${USER_NAME}
ENV     USER=${USER_NAME} HOME=${WORKDIR}
WORKDIR ${WORKDIR}

# Set the entrypoint
COPY    ./entrypoint.sh /entrypoint.sh
CMD     ["/bin/bash", "/entrypoint.sh"]

##################################################### For Testing

# COPY for-test/index.php index.php
# EXPOSE 8123
# CMD ["frankenphp", "php-server", "--listen", ":8123"]