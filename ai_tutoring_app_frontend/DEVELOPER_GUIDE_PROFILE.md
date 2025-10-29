Developer Guide — Profile Feature and Project Root

Flutter project root:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
- Run all Flutter commands from that directory (contains pubspec.yaml).

Feature summary:
- Profile tab added as 4th item in bottom navigation.
- Screens:
  - lib/screens/profile_screen.dart
  - lib/screens/edit_profile_screen.dart
- Routes:
  - lib/screens/profile_routes.dart -> '/profile'
  - lib/screens/edit_profile_routes.dart -> '/profile/edit'
- Route registration in lib/main.dart via MaterialApp.routes.

Quick start:
cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
flutter pub get
flutter analyze
flutter test
flutter run

Testing:
- test/profile_tab_smoke_test.dart
- test/profile_edit_navigation_test.dart
- test/routes_registration_smoke_test.dart
- test/project_root_smoke_test.dart

Notes:
- Current Edit Profile is a stub (no persistence).
- Ocean Professional theme applied via theme/app_theme.dart.
