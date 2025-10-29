#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Auto-detects the Flutter project root (directory containing pubspec.yaml)
# under this repository and runs a flutter command from there.
# Usage:
#   tools/flutter_autorun.sh pub get
#   tools/flutter_autorun.sh analyze
#   tools/flutter_autorun.sh test
set -e

# Try known path first for speed.
KNOWN="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [ -f "$KNOWN/pubspec.yaml" ]; then
  FLUTTER_ROOT="$KNOWN"
else
  # Fallback: search for the first pubspec.yaml under this repo that looks like a Flutter app.
  FLUTTER_ROOT="$(find . -maxdepth 4 -type f -name pubspec.yaml | grep ai_tutoring_app_frontend/pubspec.yaml | sed 's|/pubspec.yaml||' | head -n 1)"
  if [ -z "$FLUTTER_ROOT" ]; then
    # General fallback: first pubspec.yaml found
    FLUTTER_ROOT="$(find . -maxdepth 4 -type f -name pubspec.yaml | sed 's|/pubspec.yaml||' | head -n 1)"
  fi
fi

if [ -z "$FLUTTER_ROOT" ] || [ ! -f "$FLUTTER_ROOT/pubspec.yaml" ]; then
  echo "[ERROR] Could not locate a Flutter project root with pubspec.yaml."
  exit 1
fi

cd "$FLUTTER_ROOT"

if [ $# -eq 0 ]; then
  echo "[INFO] Detected Flutter root: $(pwd)"
  echo "Usage: $0 <flutter subcommand and args>"
  echo "Examples:"
  echo "  $0 pub get"
  echo "  $0 analyze"
  echo "  $0 test"
  exit 0
fi

echo "[INFO] Running: flutter $* (cwd=$(pwd))"
flutter "$@"
