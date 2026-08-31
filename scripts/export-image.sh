#!/usr/bin/env bash
set -euo pipefail

MACHINE="raspberrypi4-64"
IMAGE="${1:-core-image-minimal}"
DEPLOY_DIR="$(cd "$(dirname "$0")/.." && pwd)/build/tmp/deploy/images/${MACHINE}"
LINK="${DEPLOY_DIR}/${IMAGE}-${MACHINE}.rootfs.wic.bz2"

REAL_BZ2="$(readlink -f "$LINK")"
OUT_WIC="${REAL_BZ2%.bz2}"

echo "Decompressing $(basename "$REAL_BZ2")..."
bunzip2 -c "$REAL_BZ2" > "$OUT_WIC"

echo ""
echo "Ready: $OUT_WIC"
echo ""
echo "To copy it to another machine, run something like this from there (adjust host/port/destination to your own setup):"
echo "  scp -P <port> $(whoami)@<vm-host>:${OUT_WIC} <local-destination-path>"