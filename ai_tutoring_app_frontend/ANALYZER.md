# Analyzer Configuration (App-local)

This file (analysis_options.yaml) configures static analysis for the Flutter app.
It lives alongside pubspec.yaml so analyzers scanning this folder can locate both.

- Extends: flutter_lints
- Excludes: build/, .dart_tool/

Run from this directory:
- flutter analyze
- flutter test
