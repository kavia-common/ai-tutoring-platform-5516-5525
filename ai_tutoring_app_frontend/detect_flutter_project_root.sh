#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Prints the relative path to the Flutter project directory for CI systems.
set -euo pipefail
if [[ -f "FLUTTER_APP_DIR" ]]; then
  tail -n 1 FLUTTER_APP_DIR
else
  echo "ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
fi
