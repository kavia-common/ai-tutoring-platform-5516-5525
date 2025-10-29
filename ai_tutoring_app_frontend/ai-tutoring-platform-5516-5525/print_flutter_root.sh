#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Prints the relative path to the Flutter app directory for CI jobs.
# Usage:
#   FLUTTER_DIR="$(bash ai-tutoring-platform-5516-5525/print_flutter_root.sh)"
#   cd "$FLUTTER_DIR" && flutter analyze
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Read marker if present; fallback to hardcoded path.
MARKER_FILE="$SCRIPT_DIR/FLUTTER_PROJECT_PATH.txt"
if [[ -f "$MARKER_FILE" ]]; then
  # shellcheck disable=SC2002
  cat "$MARKER_FILE" | tail -n 1
  exit 0
fi
echo "ai_tutoring_app_frontend"
