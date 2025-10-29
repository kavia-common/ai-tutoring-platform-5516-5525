# Dart-based CI shim

If a CI runner only supports `dart run` from the repository root, use:

- dart run bin/mobile_ci.dart analyze
- dart run bin/mobile_ci.dart test

This shim changes into the real Flutter app directory:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Then it runs the requested Flutter command.
