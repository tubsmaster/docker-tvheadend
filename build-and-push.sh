#!/bin/bash
set -eux

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

IMAGE_URL=tubsmaster/docker-tvheadend

TARGET_PLATFORM='linux/amd64'
#docker buildx prune -a -f
docker buildx build --network host --pull --push --platform ${TARGET_PLATFORM} --output='type=image' -t ${IMAGE_URL} .

