#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# cd_into_flutter_and_run.sh
# This script ensures Flutter commands run from the correct app directory.
# Usage examples:
#   tools/cd_into_flutter_and_run.sh pub get
#   tools/cd_into_flutter_and_run.sh analyze
#   tools/cd_into_flutter_and_run.sh test
#   tools/cd_into_flutter_and_run.sh run
#
# The script will cd into ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
# (where pubspec.yaml lives) and invoke `flutter <args...>`.

APP_DIR="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

if [ ! -d "$APP_DIR" ]; then
  echo "Error: Expected app directory not found at: $APP_DIR" >&2
  exit 1
fi

if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found in $APP_DIR. Are you in the repo root?" >&2
  exit 2
fi

cd "$APP_DIR"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Error: flutter command not found on PATH. Ensure Flutter SDK is installed in CI." >&2
  exit 3
fi

# Forward all arguments to flutter
flutter "$@"
