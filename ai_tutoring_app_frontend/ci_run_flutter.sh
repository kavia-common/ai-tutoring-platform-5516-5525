#!/usr/bin/env bash
set -euo pipefail

# PUBLIC_INTERFACE
# ci_run_flutter.sh
# Unified CI entrypoint to discover the Flutter project path and run common tasks.
# Usage:
#   ./ci_run_flutter.sh analyze
#   ./ci_run_flutter.sh test
#   ./ci_run_flutter.sh pubget
#
# It auto-discovers the app directory by checking common markers and falls back
# to scanning for a pubspec.yaml that declares a Flutter project.

discover_app_dir() {
  # Priority 1: explicit markers
  if [ -f ".flutter_app_path" ]; then
    local p
    p="$(cat .flutter_app_path | tr -d '[:space:]')"
    if [ -n "$p" ] && [ -f "$p/pubspec.yaml" ]; then
      echo "$p"
      return 0
    fi
  fi

  if [ -f "flutter_projects.yaml" ]; then
    local p
    p="$(grep -E '^- ' flutter_projects.yaml | head -n1 | sed -E 's/^- //g' | tr -d '[:space:]')"
    if [ -n "$p" ] && [ -f "$p/pubspec.yaml" ]; then
      echo "$p"
      return 0
    fi
  fi

  if [ -f "flutter_projects.json" ]; then
    local p
    p="$(grep -oE 'ai-tutoring-platform-[^"]+/ai_tutoring_app_frontend' flutter_projects.json | head -n1 | tr -d '[:space:]')"
    if [ -n "$p" ] && [ -f "$p/pubspec.yaml" ]; then
      echo "$p"
      return 0
    fi
  fi

  if [ -f "Makefile" ]; then
    # Known location used across scripts
    local p="ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"
    if [ -f "$p/pubspec.yaml" ]; then
      echo "$p"
      return 0
    fi
  fi

  # Fallback: scan for a Flutter pubspec.yaml
  local found
  found="$(grep -Rsl "^name:" --include="pubspec.yaml" ai-tutoring-platform-5516-5525 2>/dev/null | head -n1 || true)"
  if [ -n "$found" ]; then
    local dir
    dir="$(dirname "$found")"
    # Sanity-check: should contain "flutter:" section
    if grep -q "^flutter:" "$found"; then
      echo "$dir"
      return 0
    fi
  fi

  return 1
}

main() {
  if ! command -v flutter >/dev/null 2>&1; then
    echo "Error: Flutter SDK not found on PATH." >&2
    exit 3
  fi

  if [ $# -lt 1 ]; then
    echo "Usage: $0 {pubget|analyze|test}" >&2
    exit 2
  fi

  local app_dir
  if ! app_dir="$(discover_app_dir)"; then
    echo "Error: Could not determine project root directory for Flutter project" >&2
    exit 4
  fi

  echo "==> Using Flutter app directory: $app_dir"

  case "$1" in
    pubget)
      (cd "$app_dir" && flutter pub get)
      ;;
    analyze)
      (cd "$app_dir" && flutter pub get && flutter analyze)
      ;;
    test)
      (cd "$app_dir" && flutter pub get && flutter test)
      ;;
    *)
      echo "Unknown command: $1. Use one of: pubget, analyze, test" >&2
      exit 2
      ;;
  esac
}

main "$@"
