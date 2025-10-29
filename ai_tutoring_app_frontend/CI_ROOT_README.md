# CI Root Notes

This repository is a monorepo. The Flutter app is at:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

To analyze/test/build from CI, use one of these (they change into the app dir automatically):
- ./ci.sh
- ./mobile_code_analysis.sh
- ./run_flutter.sh analyze
- ./flutterw analyze
- make analyze

For Android builds, the root `gradlew` is a shim that delegates into:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend/android/gradlew

Locators for generic tooling:
- .flutter-application-path
- .flutter-location
- mobile-ci.yaml
- .mobileci.json
- flutter_project_locator.yaml
