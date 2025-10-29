#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# test.sh - Repository root test runner for the Flutter app.
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not found on PATH." >&2
  exit 3
fi

flutter pub get
flutter test
