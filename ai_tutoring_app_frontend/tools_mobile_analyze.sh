#!/usr/bin/env bash
# Robust mobile analyzer entrypoint for CI systems invoking from repo root.
# Ensures we run from the Flutter app directory and gives helpful diagnostics.
set -euo pipefail

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [[ ! -d "$APP_DIR" ]]; then
  echo "Error: Expected app directory not found at: $APP_DIR" >&2
  exit 1
fi

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: 'flutter' not found in PATH. Ensure Flutter is installed and on PATH in CI." >&2
  echo "Hint: Using GitHub Actions? See .github/workflows/flutter_ci.yml" >&2
  exit 2
fi

echo "Switching to Flutter app directory: $APP_DIR"
cd "$APP_DIR"

if [[ ! -f "pubspec.yaml" ]]; then
  echo "Error: pubspec.yaml not found in $PWD — cannot determine Flutter project root." >&2
  exit 3
fi

echo "Running flutter pub get..."
flutter pub get

CMD="${1:-analyze}"
case "$CMD" in
  analyze)
    echo "Running flutter analyze..."
    flutter analyze
    ;;
  test)
    echo "Running flutter test..."
    flutter test
    ;;
  *)
    echo "Running custom flutter command: $CMD"
    flutter $CMD
    ;;
esac
