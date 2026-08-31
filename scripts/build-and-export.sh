#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

IMAGE="${1:-core-image-minimal}"

./build.sh "$IMAGE"
./export-image.sh "$IMAGE"