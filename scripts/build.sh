#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [ -n "${1:-}" ]; then
    export KAS_TARGET="$1"
fi

kas build kas.yml