#!/usr/bin/env bash
# Mobile code analysis shim to ensure analysis runs from the actual Flutter app directory.
# Default behavior: run `flutter analyze` from the app directory.
# Usage:
#   ./mobile_code_analysis.sh            # runs analyze
#   ./mobile_code_analysis.sh test       # runs tests
#   ./mobile_code_analysis.sh "pub get"  # arbitrary flutter command(s)

set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Error: Could not determine project root directory for Flutter project (missing pubspec at $APP_DIR)" >&2
  exit 1
fi

cd "$APP_DIR"

CMD="${1:-analyze}"

case "$CMD" in
  "analyze")
    echo "Running flutter analyze in $PWD"
    flutter pub get
    flutter analyze
    ;;
  "test")
    echo "Running flutter test in $PWD"
    flutter pub get
    flutter test
    ;;
  *)
    echo "Running custom command in $PWD: flutter $CMD"
    flutter $CMD
    ;;
esac
