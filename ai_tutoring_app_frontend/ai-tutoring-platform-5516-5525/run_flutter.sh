#!/usr/bin/env bash
# Tiny helper to ensure Flutter is run from the correct project directory.
# Usage examples (from repo root):
#   ./ai-tutoring-platform-5516-5525/run_flutter.sh pub get
#   ./ai-tutoring-platform-5516-5525/run_flutter.sh analyze
#   ./ai-tutoring-platform-5516-5525/run_flutter.sh test

set -euo pipefail

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/ai_tutoring_app_frontend" && pwd)"
cd "$APP_DIR"

# Echo current working directory for CI logs
echo "Running in: $PWD"
echo "+ flutter $*"
flutter "$@"
