# Contributing / CI Notes for Mobile

The Flutter app lives in:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

To avoid the common error:
> Could not determine project root directory for Flutter project

use one of these from the repository root:
- ./ci.sh
- ./mobile_code_analysis.sh
- ./run_flutter.sh analyze
- ./flutterw analyze
- make analyze

Or run commands directly from inside the app dir:
- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- flutter pub get && flutter analyze && flutter test
