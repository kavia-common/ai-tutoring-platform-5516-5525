#!/usr/bin/env bash
# CI-friendly runner that executes Flutter commands from the app directory.
# Usage examples:
#   ./ci_flutter_run.sh analyze
#   ./ci_flutter_run.sh test
#   ./ci_flutter_run.sh "pub get && analyze && test"

set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "Error: Flutter app not found at $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"

CMD="${1:-analyze}"

case "$CMD" in
  "analyze")
    flutter pub get
    flutter analyze
    ;;
  "test")
    flutter pub get
    flutter test
    ;;
  *)
    # Allow arbitrary flutter command sequences
    bash -lc "$CMD"
    ;;
esac
