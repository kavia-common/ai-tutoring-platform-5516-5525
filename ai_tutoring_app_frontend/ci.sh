#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Common CI entrypoint; delegates to mobile_code_analysis.sh
set -euo pipefail
bash "$(dirname "$0")/mobile_code_analysis.sh"
