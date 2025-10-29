#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Conventional build script invoked by many CI systems.
# Ensures all Flutter commands run from the app directory.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR_REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
APP_DIR="$REPO_ROOT/$APP_DIR_REL"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi

echo "Entering Flutter app directory: $APP_DIR_REL"
cd "$APP_DIR"

echo "Running flutter pub get"
flutter pub get

echo "Running flutter analyze"
flutter analyze

echo "Running flutter test"
CI=true flutter test
