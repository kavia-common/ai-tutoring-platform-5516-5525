#!/usr/bin/env bash
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "ERROR: pubspec.yaml not found in $APP_DIR"
  echo "Set CI working-directory to: $APP_DIR"
  exit 1
fi

cd "$APP_DIR"

flutter --version
flutter pub get
flutter analyze
flutter test
