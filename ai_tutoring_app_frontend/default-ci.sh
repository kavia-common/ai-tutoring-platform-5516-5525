#!/usr/bin/env bash
# Default CI entrypoint to ensure Flutter runs from the correct app directory.
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "default-ci.sh error: pubspec.yaml not found at $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"
echo "default-ci.sh: Running in $PWD"
flutter pub get
flutter analyze
