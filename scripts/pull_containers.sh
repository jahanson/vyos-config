#!/bin/sh

mapfile -t CONFIG_IMAGES < <(find /config/config-parts/ -type f -exec sed -nr "s/set container name .* image '(.*)'/\1/p" {} + | sort | uniq)

for image in "${CONFIG_IMAGES[@]}"; do
  echo "Pulling image ${image}"
  podman pull "${image}"
done
