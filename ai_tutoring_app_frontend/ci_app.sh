#!/usr/bin/env bash
# Delegates CI tasks to the Flutter app directory.
set -euo pipefail
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [[ ! -f "$APP_DIR/pubspec.yaml" ]]; then
  echo "ci_app.sh error: $APP_DIR/pubspec.yaml not found" >&2
  exit 1
fi
cd "$APP_DIR"
exec ./ci_all.sh
