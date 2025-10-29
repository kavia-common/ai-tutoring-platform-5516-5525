# Flutter CI Working Directory

Flutter project root (contains pubspec.yaml):
ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Run Flutter commands from this directory:
- flutter pub get
- flutter analyze
- flutter test
- flutter run

If you see:
"Error: Could not determine project root directory for Flutter project"
it means commands were executed outside the Flutter project root.

Helpers available:
- run_flutter.sh
- tools/flutter_ci.sh
- tools/flutter_autorun.sh
- .ci/run_flutter.sh
- tools/discover_flutter_root.sh
