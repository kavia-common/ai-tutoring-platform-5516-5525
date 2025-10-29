#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Runs a Flutter command from the correct project root.
# Usage:
#   tools/flutter_ci.sh pub get
#   tools/flutter_ci.sh analyze
#   tools/flutter_ci.sh test
#   tools/flutter_ci.sh run
set -e

FLUTTER_ROOT="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -f "$FLUTTER_ROOT/pubspec.yaml" ]; then
  echo "[ERROR] Could not find pubspec.yaml at $FLUTTER_ROOT"
  exit 1
fi

cd "$FLUTTER_ROOT"

if [ $# -eq 0 ]; then
  echo "Usage: $0 <flutter subcommand and args>"
  echo "Examples:"
  echo "  $0 pub get"
  echo "  $0 analyze"
  echo "  $0 test"
  echo "  $0 run"
  exit 2
fi

echo "[INFO] Running: flutter $* (in $FLUTTER_ROOT)"
flutter "$@"
