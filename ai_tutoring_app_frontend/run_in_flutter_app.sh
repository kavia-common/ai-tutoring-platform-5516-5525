#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# run_in_flutter_app.sh
# CD into the Flutter app directory and run the provided flutter subcommand.
# Usage:
#   ./run_in_flutter_app.sh analyze
#   ./run_in_flutter_app.sh pub get
#   ./run_in_flutter_app.sh test

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -d "$APP_DIR" ] || [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: Could not locate Flutter app at $APP_DIR (missing pubspec.yaml)." >&2
  exit 2
fi

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: Flutter SDK not found on PATH. Install Flutter or use a CI image with Flutter preinstalled." >&2
  exit 3
fi

cd "$APP_DIR"
flutter "$@"
