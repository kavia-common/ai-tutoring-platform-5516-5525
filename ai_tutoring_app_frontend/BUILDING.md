# Building and Analyzing the Flutter App

This is the Flutter project root (contains pubspec.yaml).

Run commands from this directory:

- flutter pub get
- flutter analyze
- flutter test
- flutter run

From repository root, you can run via wrappers:
- ./flutterw analyze
- ./ci_run_flutter.sh analyze
- make analyze

Common error:
"Could not determine project root directory for Flutter project"
Fix: Ensure your working directory is `ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend` before invoking Flutter.
