# Running Flutter commands from the correct directory

This repository contains multiple projects. To avoid the error:
> Could not determine project root directory for Flutter project

always run Flutter commands from this app directory:

- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Common commands:
- flutter pub get
- flutter analyze
- flutter test
- flutter run

Alternatively, use the provided helper script at the repo root:
- ./run_flutter.sh analyze
- ./run_flutter.sh test
- ./run_flutter.sh pub get
