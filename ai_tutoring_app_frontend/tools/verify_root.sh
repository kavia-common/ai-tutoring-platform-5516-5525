#!/usr/bin/env bash
set -euo pipefail
if [[ -f "pubspec.yaml" && -d "lib" ]]; then
  echo ":: Found Flutter project root at $(pwd)"
  exit 0
else
  echo ":: Not a Flutter project root: $(pwd)" >&2
  exit 1
fi
