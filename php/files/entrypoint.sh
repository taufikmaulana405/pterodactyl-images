#!/bin/bash

# Configure colors
CYAN='\033[0;36m'
RESET_COLOR='\033[0m'

# Show Version Package
echo -e "${CYAN}PHP Version: $(php -v) ${RESET_COLOR}\n"
echo -e "${CYAN}Composer Version: $(composer -V) ${RESET_COLOR}"
echo -e "${CYAN}Node Version: $(node -v) ${RESET_COLOR}\n"
echo -e "${CYAN}NPM Version: $(npm -v) ${RESET_COLOR}\n"
echo -e "${CYAN}Yarn Version: $(yarn -v) ${RESET_COLOR}\n"
echo -e "${CYAN}$(nginx -v) ${RESET_COLOR}"

# Add PATH Composer, Node, NPM and Yarn
export PATH=$PATH:/home/container/.composer/vendor/bin:/home/container/.yarn/bin:/home/container/.config/yarn/global/node_modules/.bin

# Create the tmp and log folder
mkdir -p /home/container/tmp
mkdir -p /home/container/logs

# check if the php-fpm and nginx folders exist
if [ ! -f /home/container/nginx/nginx.conf ]; then
    cp -rv /var/lib/config-default/nginx /home/container/
fi

if [ ! -d /home/container/php ]; then
  cp -rv /var/lib/config-default/php /home/container/
fi

# check if the startup file exists
if [ ! -f /home/container/$STARTUP_CMD ]; then
  cp /var/lib/config-default/startup.sh /home/container/$STARTUP_CMD
  chmod +x /home/container/$STARTUP_CMD
fi

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e "${CYAN}STARTUP /home/container: ${MODIFIED_STARTUP} ${RESET_COLOR}"

# Run the Server
eval ${MODIFIED_STARTUP}