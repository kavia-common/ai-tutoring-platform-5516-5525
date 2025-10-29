#!/usr/bin/env bash
# Run Flutter tasks from the app directory to avoid project-root errors.
set -euo pipefail

if [[ ! -f "pubspec.yaml" ]]; then
  echo "Must run from ai_tutoring_app_frontend directory (pubspec.yaml not found)" >&2
  exit 1
fi

echo "[ci_all] flutter pub get"
flutter pub get

echo "[ci_all] flutter analyze"
flutter analyze

echo "[ci_all] flutter test"
flutter test
