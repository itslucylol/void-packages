#!/bin/bash

IMAGES=("lvp-build" "lucys-void-packages")

for IMAGE in "${IMAGES[@]}"; do
    echo "Cleaning up $IMAGE..."

    # Stop and remove any containers using this image
    podman ps -a -q --filter "ancestor=$IMAGE" | xargs -r podman rm -f

    # Remove the image itself
    podman images -q "$IMAGE" | xargs -r podman rmi -f
done

echo "Cleanup complete!"