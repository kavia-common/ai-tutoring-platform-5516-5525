Set CI working directory to:
ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Reason:
Flutter requires commands to run from the project root containing pubspec.yaml.

Suggested CI steps:
- working-directory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- run: flutter pub get
- run: flutter analyze
- run: flutter test
