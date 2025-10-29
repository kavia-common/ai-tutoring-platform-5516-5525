#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Runs Flutter analysis and tests from the correct project directory.
# Usage (CI/local):
#   bash run_flutter_checks.sh
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR_HINT_FILE="$REPO_ROOT/FLUTTER_APP_DIR"

if [[ -f "$APP_DIR_HINT_FILE" ]]; then
  FLUTTER_APP_DIR_REL="$(tail -n 1 "$APP_DIR_HINT_FILE")"
else
  FLUTTER_APP_DIR_REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
fi

APP_DIR="$REPO_ROOT/$FLUTTER_APP_DIR_REL"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi

echo "Changing directory to: $APP_DIR"
cd "$APP_DIR"

echo "Running: flutter pub get"
flutter pub get

echo "Running: flutter analyze"
flutter analyze

echo "Running: flutter test"
# Make tests non-interactive in CI
CI=true flutter test
