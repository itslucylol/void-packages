#!/bin/bash

# Usage: ./export.sh <name> <container> <directory>
# Ex:    ./export.sh eigen5 lvp-eigen5 /opt/eigen5
# Ex:    ./export.sh orcaslicer lvp-orca_slicer /opt/orcaslicer

mkdir -p "dist"
CTR_ID=$(podman create "$2")
podman cp "${CTR_ID}:$3" "dist/$1"
podman rm "$CTR_ID"
tar -czvf "dist/$1.tar.gz" -C "dist" "$1"