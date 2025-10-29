# AI Tutoring Monorepo (Root Wrapper)

This repository's root is a minimal Flutter wrapper app to help CI/analyzers detect a Flutter project when starting at the repository root.

The actual production Flutter app is located here:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

How to run/analyze the real app:
- cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- flutter pub get
- flutter analyze
- flutter test

From the repo root, you can use helper scripts that delegate into the app:
- ./run_flutter.sh analyze
- ./mobile_code_analysis.sh
- ./analyze.sh
- make analyze
