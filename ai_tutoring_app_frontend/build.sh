#!/usr/bin/env bash
# Universal CI entry that ensures Flutter runs from the correct project directory.
set -euo pipefail
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -d "$APP_DIR" || ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "build.sh error: Cannot locate Flutter app at '$APP_DIR' (missing dir or pubspec.yaml)." >&2
  exit 1
fi

cd "$APP_DIR"
echo "build.sh: Running in $PWD"
flutter pub get
flutter analyze
