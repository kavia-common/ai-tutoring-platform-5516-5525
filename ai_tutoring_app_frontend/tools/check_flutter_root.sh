#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Verifies this directory is a Flutter project root by checking for pubspec.yaml
# and prints guidance if not executed from the right place.

if [ -f "pubspec.yaml" ]; then
  echo "[OK] pubspec.yaml found. This is the Flutter project root."
  exit 0
else
  echo "[ERROR] pubspec.yaml not found here."
  echo "Please run Flutter commands from: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
  exit 1
fi
