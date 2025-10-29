#!/usr/bin/env bash
# PUBLIC_INTERFACE
# Conventional CI entrypoint used by automated pipelines.
# Delegates to the root flutter wrapper which cd's into the app directory.
set -euo pipefail

if [[ ! -x "./flutterw" ]]; then
  echo "Error: flutterw wrapper not found or not executable at repo root." >&2
  exit 1
fi

echo "Running Flutter dependency install..."
./flutterw pub get

echo "Running Flutter analyze..."
./flutterw analyze

echo "Running Flutter tests..."
CI=true ./flutterw test
