#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# test/run_ci.sh
# Run Flutter analyze and test from the Flutter project root (this directory).

if [ ! -f "../pubspec.yaml" ] && [ ! -f "pubspec.yaml" ]; then
  echo "Error: Must run from ai_tutoring_platform_frontend app directory (pubspec.yaml not found)." >&2
  exit 2
fi

# If this script is run from test/ subdir, cd up one level to the project root.
if [ -f "../pubspec.yaml" ]; then
  cd ..
fi

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not found on PATH." >&2
  exit 3
fi

flutter pub get
flutter analyze
flutter test
