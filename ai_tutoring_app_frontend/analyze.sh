#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Simple analysis entrypoint for CI; uses flutter proxy which routes to app dir.
set -euo pipefail
./flutter pub get
./flutter analyze
