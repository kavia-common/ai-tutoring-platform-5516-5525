#!/usr/bin/env bash
# Root-level wrapper for CI and local use. Ensures Flutter runs from the app directory.
# Usage examples (from repo root):
#   ./run_flutter.sh pub get
#   ./run_flutter.sh analyze
#   ./run_flutter.sh test
#   ./run_flutter.sh run

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_RUNNER="$SCRIPT_DIR/ai-tutoring-platform-5516-5525/run_flutter.sh"

if [[ ! -f "$APP_RUNNER" ]]; then
  echo "Error: App runner not found at $APP_RUNNER"
  exit 1
fi

# Forward all args to the app-level runner which cd's into the Flutter app directory
exec "$APP_RUNNER" "$@"
