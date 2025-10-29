# CI Runner Note (Flutter Monorepo)

This repository hosts the Flutter app at:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

If your CI or local scripts run from the repository root and you see:
> Could not determine project root directory for Flutter project

run Flutter commands from the app directory, or use one of the provided runners:

- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend && flutter pub get && flutter analyze
- ./ci.sh
- ./mobile_code_analysis.sh
- ./flutterw analyze

These ensure the working directory is set to the actual Flutter project before running Flutter tooling.
