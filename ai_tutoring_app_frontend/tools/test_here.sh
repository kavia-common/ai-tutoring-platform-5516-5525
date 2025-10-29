#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Ensures tests run from the Flutter project root (where pubspec.yaml lives).
# Usage:
#   ./tools/test_here.sh
set -e
if [ ! -f "pubspec.yaml" ]; then
  echo "[ERROR] Run this from ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
  exit 2
fi
echo "[OK] In Flutter project root: $(pwd)"
flutter test
