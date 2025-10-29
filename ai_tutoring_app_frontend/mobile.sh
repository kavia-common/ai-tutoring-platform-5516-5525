#!/usr/bin/env bash
# Common CI/mobile entrypoint. Ensures working directory is the Flutter app.
set -euo pipefail
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "mobile.sh error: pubspec.yaml not found at $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
flutter pub get
flutter analyze
