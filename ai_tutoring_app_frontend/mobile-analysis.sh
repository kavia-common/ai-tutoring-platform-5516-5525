#!/usr/bin/env bash
# Universal mobile analysis entry for CI systems that auto-run 'mobile-analysis.sh'.
# It cd's into the Flutter app directory and runs flutter analyze.
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at '$APP_DIR'." >&2
  exit 1
fi

if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Error: pubspec.yaml not found in '$APP_DIR'." >&2
  exit 2
fi

cd "$APP_DIR"
echo "Running mobile analysis in: $PWD"
flutter pub get
flutter analyze
