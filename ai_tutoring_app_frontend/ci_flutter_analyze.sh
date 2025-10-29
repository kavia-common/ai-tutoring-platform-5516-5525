#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# ci_flutter_analyze.sh
# Run Flutter static analysis from the correct project directory.
# Usage: ./ci_flutter_analyze.sh
#
# This script cd's into the app path that contains pubspec.yaml before invoking `flutter analyze`.

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -d "$APP_DIR" ] || [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: Could not locate Flutter app directory at: $APP_DIR (missing pubspec.yaml)" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not found on PATH. Please install Flutter or set up CI image accordingly." >&2
  exit 3
fi

flutter pub get
flutter analyze
