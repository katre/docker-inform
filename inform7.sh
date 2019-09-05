#!/bin/bash

# Wrapper script to create the save directory (if needed) and start Inform7 in a docker container.

SAVE_DIRECTORY=${1:-${HOME}/Inform7}

echo "Projects must be saved to ${SAVE_DIRECTORY}"

if [ ! -d "${SAVE_DIRECTORY}" ]; then
  echo "Creating ${SAVE_DIRECTORY} to save projects in."
  mkdir -p "${SAVE_DIRECTORY}"
fi

echo "Starting Inform7 in docker container..."

exec docker run \
  -it \
  --rm \
  --env DISPLAY=${DISPLAY} \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  --volume "${SAVE_DIRECTORY}:/home/informer/Inform7" \
  inform7 2>&1 >/dev/null
