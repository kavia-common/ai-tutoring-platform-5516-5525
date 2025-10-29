#!/usr/bin/env bash
# Emits the absolute path of the Flutter app directory and checks for pubspec.yaml.
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Flutter app directory: $HERE"
if [[ -f "$HERE/pubspec.yaml" ]]; then
  echo "pubspec.yaml found."
  exit 0
else
  echo "pubspec.yaml NOT found!" >&2
  exit 2
fi
