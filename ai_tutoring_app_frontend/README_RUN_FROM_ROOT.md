# Running Flutter from Repo Root

This repository is a small monorepo. The actual Flutter app lives at:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Some CI systems invoke tools from the repository root and expect to detect a Flutter project.
To help them:

Options:
1) Use the root wrapper:
   - ./run_flutter.sh pub get
   - ./run_flutter.sh analyze
   - ./run_flutter.sh test

2) Use melos:
   - dart pub global activate melos
   - melos bootstrap
   - melos run pub_get
   - melos run analyze
   - melos run test

3) Run directly inside the app directory:
   - cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
   - flutter pub get && flutter analyze && flutter test
