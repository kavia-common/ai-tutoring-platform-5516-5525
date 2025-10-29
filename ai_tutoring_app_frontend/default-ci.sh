#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Default CI entrypoint used by some pipelines.
# Runs Flutter from the correct app directory to avoid root detection issues.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR_REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
APP_DIR="$REPO_ROOT/$APP_DIR_REL"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Flutter app directory not found at: $APP_DIR" >&2
  exit 1
fi

cd "$APP_DIR"
flutter pub get
flutter analyze
CI=true flutter test
