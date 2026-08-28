#!/usr/bin/env bash
set -euo pipefail

MACHINE="raspberrypi4-64"
DEPLOY_DIR="$(cd "$(dirname "$0")/.." && pwd)/build/tmp/deploy/images/${MACHINE}"

echo "Removing decompressed .wic files in ${DEPLOY_DIR}..."
find "$DEPLOY_DIR" -maxdepth 1 -name "*.wic" -type f -delete
echo "Done."