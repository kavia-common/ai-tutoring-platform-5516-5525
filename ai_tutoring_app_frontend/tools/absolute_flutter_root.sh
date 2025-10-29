#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Prints the absolute path to the Flutter project root (directory containing pubspec.yaml).
# Usage:
#   tools/absolute_flutter_root.sh
set -e
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
APP_REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
APP_ABS="$REPO_ROOT/$APP_REL"
if [ -f "$APP_ABS/pubspec.yaml" ]; then
  echo "$APP_ABS"
  exit 0
else
  echo "[ERROR] pubspec.yaml not found at $APP_ABS" >&2
  exit 2
fi
