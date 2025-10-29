# CI usage for the Flutter mobile app

The actual Flutter project is at:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Invoke any mobile CI tasks via one of the following from repo root:

- ./mobile_code_analysis.sh
- ./ci_flutter_run.sh analyze
- ./tools_mobile_analyze.sh test
- ./run_flutter.sh analyze
- make analyze

These scripts ensure the working directory is set to the app folder before running Flutter commands, avoiding:
> Could not determine project root directory for Flutter project

Generic analyzers may also consult .mobileci.json to locate the Flutter app path.
