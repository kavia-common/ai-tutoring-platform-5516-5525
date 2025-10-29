# Mobile CI Instructions (Flutter)

Actual Flutter app directory:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Run from repo root using one of:
- ./run_flutter.sh analyze
- ./ci_flutter_run.sh analyze
- ./mobile_code_analysis.sh
- dart run tool.dart analyze

Or `cd` into the app directory and run:
- flutter pub get && flutter analyze && flutter test
