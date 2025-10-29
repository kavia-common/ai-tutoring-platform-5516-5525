#!/usr/bin/env bash
# Standardized file name some CI systems look for. Delegates to our shim.
set -euo pipefail
exec "$(dirname "$0")/mobile_code_analysis.sh" "${@:-}"
