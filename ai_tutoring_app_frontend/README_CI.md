CI instructions for Flutter project root

The Flutter app is not at repository root. Automated discovery may fail.
Use one of these approaches to run checks from CI:

Option A (recommended): use the wrapper
  - ./flutterw pub get
  - ./flutterw analyze
  - ./flutterw test

Option B: use the helper script
  - bash run_flutter_checks.sh

Option C: make targets
  - make deps
  - make analyze
  - make test

Direct working-directory (if supported):
  working-directory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
