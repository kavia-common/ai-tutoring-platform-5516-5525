#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Runs the Flutter app targeting the dev entry that opens the Profile screen.
# Usage:
#   ./tools/run_profile_dev.sh
set -e
if [ ! -f "pubspec.yaml" ]; then
  echo "[ERROR] Run this from ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
  exit 2
fi
echo "[OK] In Flutter project root: $(pwd)"
flutter run -t lib/main_profile_dev.dart
