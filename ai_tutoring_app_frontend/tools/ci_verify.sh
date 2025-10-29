#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Verifies Flutter project root and runs analyze + test from the correct directory.
# Usage:
#   ./tools/ci_verify.sh
set -e

if [ ! -f "pubspec.yaml" ]; then
  echo "[ERROR] Run this from ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
  exit 2
fi

echo "[OK] In Flutter project root: $(pwd)"
flutter pub get
flutter analyze
flutter test
