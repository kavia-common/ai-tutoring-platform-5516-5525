#!/usr/bin/env sh
# PUBLIC_INTERFACE
# Discovers and prints the relative path to the Flutter project root (contains pubspec.yaml).
# Usage:
#   tools/discover_flutter_root.sh
set -e

# Prefer known path
KNOWN="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
if [ -f "$KNOWN/pubspec.yaml" ]; then
  echo "$KNOWN"
  exit 0
fi

# Fallback scan (depth-limited)
FOUND="$(find . -maxdepth 4 -type f -name pubspec.yaml | head -n 1 | sed 's|/pubspec.yaml||' | sed 's|^\./||')"
if [ -n "$FOUND" ] && [ -f "$FOUND/pubspec.yaml" ]; then
  echo "$FOUND"
  exit 0
fi

echo "[ERROR] Could not locate a Flutter project root (pubspec.yaml)" >&2
exit 2
