#!/usr/bin/env bash
# Convenience runner: launches the Flutter app from the correct directory.
set -euo pipefail
if [[ ! -f "pubspec.yaml" ]]; then
  echo "Error: Must run from ai_tutoring_app_frontend directory." >&2
  exit 1
fi
flutter pub get
flutter run
