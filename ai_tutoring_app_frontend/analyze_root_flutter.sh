#!/usr/bin/env bash
# Analyze the minimal root-level Flutter wrapper app to satisfy CI analyzers.
set -euo pipefail
if [[ ! -f "pubspec.yaml" ]]; then
  echo "Error: no pubspec.yaml at repository root." >&2
  exit 1
fi
flutter pub get
flutter analyze
