#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Validates the Flutter project root and runs a flutter command from there.
# Usage examples:
#   ./check_and_run_flutter.sh pub get
#   ./check_and_run_flutter.sh analyze
#   ./check_and_run_flutter.sh test
set -e

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "[ERROR] pubspec.yaml not found at $APP_DIR"
  echo "Please ensure the repository structure is intact."
  exit 1
fi

cd "$APP_DIR"

if [ $# -eq 0 ]; then
  echo "[OK] Flutter project root detected at $(pwd)."
  echo "Provide a flutter subcommand, e.g.:"
  echo "  ./check_and_run_flutter.sh pub get"
  echo "  ./check_and_run_flutter.sh analyze"
  echo "  ./check_and_run_flutter.sh test"
  exit 2
fi

echo "[INFO] flutter $* (cwd=$(pwd))"
flutter "$@"
