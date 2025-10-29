#!/usr/bin/env bash
# Generic CI alias that ensures Flutter runs from the correct project directory.
set -euo pipefail
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "ci_run.sh error: pubspec.yaml not found at $APP_DIR" >&2
  exit 1
fi
cd "$APP_DIR"
echo "ci_run.sh: Running in $PWD"
flutter pub get
flutter analyze
