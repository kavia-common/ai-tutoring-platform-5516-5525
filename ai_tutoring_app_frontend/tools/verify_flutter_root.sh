#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Verifies that the Flutter project root exists and contains pubspec.yaml.
# Prints the path and exits 0 if OK; otherwise prints an error and exits non-zero.
# Usage:
#   tools/verify_flutter_root.sh
set -e
APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [ -f "$APP_DIR/pubspec.yaml" ]; then
  echo "[OK] Flutter root found: $APP_DIR"
  exit 0
else
  echo "[ERROR] Flutter root not found or pubspec.yaml missing at: $APP_DIR" >&2
  echo "Please run CI steps from: $APP_DIR" >&2
  exit 2
fi
