#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# flutter_analyze.sh
# Run Flutter analyze from the correct app directory.
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in $APP_DIR" >&2
  exit 2
fi

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not on PATH." >&2
  exit 3
fi

cd "$APP_DIR"
flutter pub get
flutter analyze
