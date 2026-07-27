#!/bin/bash
set -euo pipefail

## stop not-frequently wanted containers.
## docker compose up -d --build
## the above command will bring up all the containers in the compose file

## This script is to stop the not-frequently used containers after the above command.

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

containers=("$@")
if [ ${#containers[@]} -eq 0 ]; then
    containers=(guacd termix)
fi

normalized_containers=()
for container in "${containers[@]}"; do
    normalized_container="$container"
    while [ "$normalized_container" != "${normalized_container%/}" ]; do
        normalized_container="${normalized_container%/}"
    done
    normalized_containers+=("$normalized_container")
done
containers=("${normalized_containers[@]}")

remove_flatnotes_index=false
for container in "${containers[@]}"; do
    if [ "$container" = "flatnotes" ]; then
        remove_flatnotes_index=true
        break
    fi
done

available=false
for container in "${containers[@]}"; do
    if docker container inspect "$container" >/dev/null 2>&1; then
        available=true
        break
    fi
done

if [ "$available" = false ]; then
    echo -e "${YELLOW}No containers available.${NC}"
    exit 0
fi

echo -e "${YELLOW}Stopping containers:${NC} ${BLUE}${containers[*]}${NC}"
for container in "${containers[@]}"; do
    if docker container inspect "$container" >/dev/null 2>&1; then
        if [ "$(docker inspect -f '{{.State.Running}}' "$container" 2>/dev/null)" = "true" ]; then
            docker stop "$container" >/dev/null
        fi
        docker rm "$container" >/dev/null
    fi
done

if [ "$remove_flatnotes_index" = true ]; then
    echo -e "${YELLOW}Removing FlatNotes index...${NC}"
    sudo rm -rf ~/flatnotes/index
fi

echo -e "${GREEN}Removed containers:${NC} ${BLUE}${containers[*]}${NC}"
