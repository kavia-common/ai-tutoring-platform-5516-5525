#!/usr/bin/env sh
# PUBLIC_INTERFACE
# CI entry script to run Flutter commands from the correct project root.
# Usage examples:
#   .ci/run_flutter.sh pub get
#   .ci/run_flutter.sh analyze
#   .ci/run_flutter.sh test
set -e

APP_ROOT="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_ROOT/pubspec.yaml" ]; then
  echo "[ERROR] pubspec.yaml not found at $APP_ROOT"
  exit 1
fi

cd "$APP_ROOT"

if [ $# -eq 0 ]; then
  echo "[INFO] Detected Flutter root: $(pwd)"
  echo "Usage: $0 <flutter subcommand and args>"
  echo "Examples:"
  echo "  $0 pub get"
  echo "  $0 analyze"
  echo "  $0 test"
  exit 2
fi

echo "[INFO] Running: flutter $* (cwd=$(pwd))"
flutter "$@"
