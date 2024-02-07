#!/bin/sh

mapfile -t AVAILABLE_IMAGES < <(run show container image | awk '{ if ( NR > 1  ) { print $1 ":" $2} }')
mapfile -t CONFIG_IMAGES < <(find /config/config-parts/ -type f -exec sed -nr "s/set container name .* image '(.*)'/\1/p" {} + | sort | uniq)

for image in "${CONFIG_IMAGES[@]}"; do
if [[ ! " ${AVAILABLE_IMAGES[*]} " =~ \ ${image}\  ]]; then
    echo "Pulling image ${image}"
    podman pull image "${image}"
fi
done
