#!/usr/bin/env bash
set -euo pipefail
echo "Ensuring we are at Flutter app root (should contain pubspec.yaml and lib/):"
ls -la
echo "Running flutter pub get..."
flutter pub get
echo "Running flutter analyze..."
flutter analyze
echo "Running flutter test (if any)..."
flutter test || true
