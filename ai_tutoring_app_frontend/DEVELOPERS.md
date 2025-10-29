# Developers Guide — AI Tutoring Platform

This repository is a monorepo. The Flutter app lives here:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Always run Flutter commands from the app directory (where pubspec.yaml is):
- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

From the repo root, you can also use:
- ./flutterw analyze
- ./ci_run_flutter.sh analyze
- make analyze
- ./analyze.sh

Notes:
- The Profile screen is implemented and integrated as the 4th bottom tab.
- Named routes are registered (e.g., /profile and /profile/edit).
- If CI fails with “Could not determine project root directory for Flutter project”, ensure the runner changes directory into the Flutter app path above or uses the wrappers listed.
