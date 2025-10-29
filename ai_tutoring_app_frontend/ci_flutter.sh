#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# ci_flutter.sh
# Run any Flutter command from the correct project directory.
# Usage examples (from repo root):
#   ./ci_flutter.sh pub get
#   ./ci_flutter.sh analyze
#   ./ci_flutter.sh test
#   ./ci_flutter.sh run
#
# The script changes dir to the Flutter app and forwards all args to `flutter`.

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: App dir not found: $APP_DIR" >&2
  exit 1
fi
if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not found on PATH." >&2
  exit 3
fi

flutter "$@"
