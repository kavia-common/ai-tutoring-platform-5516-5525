# Final Verification — Profile Integration

Project root:
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Manual:
- flutter pub get
- flutter run
- Switch to Profile tab (4th); verify header, stats, settings list
- Tap Edit; verify Edit Profile screen with fields and Save dialog

Routes:
- /profile -> ProfileScreen
- /profile/edit -> EditProfileScreen
- Registered in lib/main.dart (MaterialApp.routes)

Tests:
- flutter test
  - test/home_screen_profile_switch_test.dart
  - test/profile_tab_smoke_test.dart
  - test/profile_edit_navigation_test.dart
  - test/routes_registration_smoke_test.dart
  - test/profile_screen_build_test.dart
  - test/project_root_smoke_test.dart

CI:
- Ensure working directory for Flutter commands is the app root path above.
