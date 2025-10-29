# Contributing – Profile Feature and Flutter Working Directory

Run all Flutter commands from this directory:
ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Examples:
- flutter pub get
- flutter analyze
- flutter test
- flutter run

Why: The Flutter tool determines the project root from the directory containing pubspec.yaml. Running these commands from any parent directory will cause errors like:
"Could not determine project root directory for Flutter project"

Profile feature files:
- lib/screens/profile_screen.dart
- lib/screens/index.dart (EditProfileScreen and route constants)
- lib/main.dart (MaterialApp routes for /profile and /profile/edit)
