#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# print_flutter_app_root.sh
# Prints the absolute path to the Flutter app root (directory containing pubspec.yaml).
# Usage:
#   ./print_flutter_app_root.sh
#
# CI/analyzers can use this to cd into the correct directory before running flutter commands.

REL="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
APP_DIR="$(cd "$(dirname "$0")" && pwd)/$REL"

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found at $APP_DIR" >&2
  exit 2
fi

echo "$APP_DIR"
