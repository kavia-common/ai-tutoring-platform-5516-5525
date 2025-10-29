# Mobile Code Analysis Entry Point

Some CI systems invoke mobile code analysis from the repository root and fail with:
> Could not determine project root directory for Flutter project

Use this provided shim, which changes into the Flutter app directory before running analysis/tests:

- ./mobile_code_analysis.sh
  - Runs `flutter analyze` from ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- ./mobile_code_analysis.sh test
  - Runs `flutter test` from the same directory
- ./mobile_code_analysis.sh "pub get"
  - Executes arbitrary flutter commands after changing to the app directory

The actual Flutter app lives at:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

This avoids project-root detection errors in generic CI environments.
