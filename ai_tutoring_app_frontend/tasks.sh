#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Generic tasks entrypoint for CI or local use.
# Ensures Flutter commands execute from the Flutter app directory.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="${REPO_ROOT}/ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

usage() {
  echo "Usage: $0 [deps|analyze|test|all]"
  exit 1
}

[[ $# -ge 1 ]] || usage
TASK="$1"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"

case "$TASK" in
  deps)
    flutter pub get
    ;;
  analyze)
    flutter pub get
    flutter analyze
    ;;
  test)
    flutter pub get
    CI=true flutter test
    ;;
  all)
    flutter pub get
    flutter analyze
    CI=true flutter test
    ;;
  *)
    usage
    ;;
esac
