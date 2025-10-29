#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Changes into the Flutter project root (directory containing pubspec.yaml)
# and runs the provided flutter subcommand.
# Usage examples:
#   tools/cd_and_flutter.sh pub get
#   tools/cd_and_flutter.sh analyze
#   tools/cd_and_flutter.sh test
set -e

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "[ERROR] pubspec.yaml not found at $APP_DIR" >&2
  exit 2
fi

cd "$APP_DIR"

if [ $# -eq 0 ]; then
  echo "[INFO] Now in $(pwd). Provide a flutter subcommand:"
  echo "       tools/cd_and_flutter.sh pub get|analyze|test|run"
  exit 1
fi

echo "[INFO] Running: flutter $* (cwd=$(pwd))"
flutter "$@"
