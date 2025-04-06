#!/bin/bash

# Configure colors
CYAN='\033[0;36m'
RESET_COLOR='\033[0m'

# Show Version Package
echo -e "${CYAN}PHP Version: $(php -v) ${RESET_COLOR}\n"
echo -e "${CYAN}Composer Version: $(composer -V) ${RESET_COLOR}"
echo -e "${CYAN}$(nginx -v) ${RESET_COLOR}"

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e "${CYAN}STARTUP /home/container: ${MODIFIED_STARTUP} ${RESET_COLOR}"

# Run the Server
eval ${MODIFIED_STARTUP}