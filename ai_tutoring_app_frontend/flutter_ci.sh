#!/usr/bin/env bash
# CI entrypoint for Flutter commands in this monorepo.
# Usage:
#   ./flutter_ci.sh analyze
#   ./flutter_ci.sh test
#   ./flutter_ci.sh pub get

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUNNER="$SCRIPT_DIR/run_flutter.sh"

if [[ ! -x "$RUNNER" ]]; then
  echo "Error: runner not found or not executable: $RUNNER" >&2
  exit 1
fi

exec "$RUNNER" "$@"
