# Changelog — Profile Feature

Date: 2025-10-29

Added:
- New Profile screen at lib/screens/profile_screen.dart following Ocean Professional theme.
- Fourth bottom navigation tab "Profile" in HomeScreen.
- Edit Profile flow (stub) via named route `/profile/edit` and EditProfileScreen (lib/screens/index.dart).
- Named routes registered in MaterialApp (lib/main.dart) using AppRoutes constants.
- Barrel exports for navigation and screens to simplify imports.
- Widget tests:
  - test/profile_screen_test.dart
  - test/home_to_profile_nav_test.dart

Notes:
- The Flutter project root is ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend (contains pubspec.yaml).
- Ensure CI runs flutter commands from the app root to avoid "Could not determine project root directory for Flutter project".
