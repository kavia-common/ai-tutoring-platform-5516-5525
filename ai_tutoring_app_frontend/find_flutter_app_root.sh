#!/usr/bin/env bash
# Prints the relative path to the Flutter app from repo root and exits with 0.
# Tools can parse this to 'cd' into the correct directory before running Flutter.
set -euo pipefail
APP_REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [[ -f "$APP_REL/pubspec.yaml" ]]; then
  echo "$APP_REL"
  exit 0
else
  echo "Error: pubspec.yaml not found at $APP_REL" >&2
  exit 1
fi
