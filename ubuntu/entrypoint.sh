# Default the TZ environment variable to UTC
TZ=${TZ:-UTC}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $NF;exit}')
export INTERNAL_IP

# Default the IMAGE_PROMPT environment variable to something nice
IMAGE_PROMPT=${IMAGE_PROMPT:-$'\033[1m\033[33mcontainer@pterodactyl~ \033[0m'}
export IMAGE_PROMPT

# Switch to the container's working directory
cd /home/container || exit 1

# Replace variables in the startup command
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
printf "%s%s\n" "$IMAGE_PROMPT" "$PARSED"

# Run the startup command
# shellcheck disable=SC2086
exec env ${PARSED}