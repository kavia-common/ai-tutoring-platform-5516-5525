#!/usr/bin/env bash
# Root-level analyzer launcher for CI. Ensures correct working directory for Flutter.
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Error: pubspec.yaml not found at $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"
echo "Analyzing Flutter project in: $PWD"
flutter pub get
flutter analyze
