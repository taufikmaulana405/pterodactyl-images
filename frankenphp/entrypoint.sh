#!/bin/bash

# Configure colors
CYAN='\033[0;36m'
GREEN='\033[1m\033[32m'
RESET_COLOR='\033[0m'

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

echo -e "${CYAN}INTERNAL_IP: ${INTERNAL_IP} ${RESET_COLOR}"

# Show Version Package
echo -e "${CYAN}################  Version Package  #####################${RESET_COLOR}"
echo -e "${CYAN}FrankenPHP Version: $(frankenphp version) ${RESET_COLOR}\n"
echo -e "${CYAN}Composer Version: $(composer -V) ${RESET_COLOR}\n"
echo -e "${CYAN}OS Version: $(cat /etc/os-release | grep -w VERSION= | cut -d '=' -f2 | tr -d '"') ${RESET_COLOR}\n"
echo -e "${CYAN}Timezone: $(date +%Z) ${RESET_COLOR}\n"
echo -e "${CYAN}########################################################${RESET_COLOR}"

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e "${GREEN}$(whoami)@$(hostname):$(pwd)${RESET_COLOR}$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}