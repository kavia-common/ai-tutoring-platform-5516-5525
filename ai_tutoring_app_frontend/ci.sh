#!/usr/bin/env bash
# Canonical CI entrypoint for mobile analysis from repo root.
# Ensures proper working directory for Flutter project before running analyze.
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -d "$APP_DIR" ]]; then
  echo "ci.sh error: expected app directory missing at: $APP_DIR" >&2
  exit 1
fi
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "ci.sh error: missing pubspec.yaml in $APP_DIR" >&2
  exit 2
fi

echo "ci.sh: switching to $APP_DIR"
cd "$APP_DIR"

echo "ci.sh: flutter pub get"
flutter pub get

echo "ci.sh: flutter analyze"
flutter analyze
