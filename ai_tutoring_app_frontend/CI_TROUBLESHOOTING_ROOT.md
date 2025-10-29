# CI Troubleshooting — Flutter Project Root

Symptom
- Error: Could not determine project root directory for Flutter project

Cause
- CI runs Flutter commands from the repository root instead of the Flutter project directory.

Fix
- Ensure working directory is set to: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend (contains pubspec.yaml)

GitHub Actions example:
  - name: Set up Flutter
    uses: subosito/flutter-action@v2
    with:
      channel: stable
  - name: Install dependencies
    working-directory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
    run: flutter pub get
  - name: Analyze
    working-directory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
    run: flutter analyze
  - name: Test
    working-directory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
    run: flutter test

GitLab CI example:
default:
  before_script:
    - cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
stages: [setup, analyze, test]
setup:
  stage: setup
  script:
    - flutter pub get
analyze:
  stage: analyze
  script:
    - flutter analyze
test:
  stage: test
  script:
    - flutter test

Azure Pipelines example:
- task: Bash@3
  displayName: Flutter pub get
  workingDirectory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
  inputs:
    targetType: inline
    script: flutter pub get

- task: Bash@3
  displayName: Flutter analyze
  workingDirectory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
  inputs:
    targetType: inline
    script: flutter analyze

- task: Bash@3
  displayName: Flutter test
  workingDirectory: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
  inputs:
    targetType: inline
    script: flutter test
