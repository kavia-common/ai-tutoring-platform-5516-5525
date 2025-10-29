# AI Tutoring Platform — Monorepo

This repository contains multiple components. The Flutter mobile app lives here:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Run all Flutter commands from the app directory:
- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- flutter pub get
- flutter analyze
- flutter test
- flutter run

If automated tools start from the repo root, they must first change into the app directory above (contains pubspec.yaml), otherwise they will fail with:
"Could not determine project root directory for Flutter project".
