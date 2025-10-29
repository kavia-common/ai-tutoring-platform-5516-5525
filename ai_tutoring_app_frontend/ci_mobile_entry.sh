#!/usr/bin/env bash
# Universal CI entry for mobile code analysis. It ensures running from the correct Flutter app dir.
# Honors env var FLUTTER_APP_DIR if provided; otherwise uses our known path.
set -euo pipefail

DEFAULT_APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
APP_DIR="${FLUTTER_APP_DIR:-$DEFAULT_APP_DIR}"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: FLUTTER_APP_DIR '$APP_DIR' not found." >&2
  exit 1
fi
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Error: pubspec.yaml not found in '$APP_DIR'." >&2
  exit 2
fi

echo "ci_mobile_entry: analyzing Flutter project at: $APP_DIR"
pushd "$APP_DIR" >/dev/null
flutter pub get
flutter analyze
popd >/dev/null
