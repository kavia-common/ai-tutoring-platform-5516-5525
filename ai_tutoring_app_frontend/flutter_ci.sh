#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Conventional CI entrypoint for Flutter projects.
# Ensures Flutter commands run from the app directory to avoid project-root detection issues.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="${REPO_ROOT}/ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"
flutter --version
flutter pub get
flutter analyze
CI=true flutter test
