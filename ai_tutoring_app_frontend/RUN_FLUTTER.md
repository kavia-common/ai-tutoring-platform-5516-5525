# Running Flutter commands (Monorepo-friendly)

This repository contains the Flutter app under:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

To avoid:
> Could not determine project root directory for Flutter project

use the root wrapper which delegates into the app directory:

Examples:
- ./run_flutter.sh pub get
- ./run_flutter.sh analyze
- ./run_flutter.sh test
- ./run_flutter.sh run

Alternatively, run commands directly from the app directory:
- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- flutter pub get && flutter analyze && flutter test
