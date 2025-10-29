# Features Overview

This Flutter app implements the AI Tutoring UI with Ocean Professional theme.

Profile
- Screen: lib/screens/profile_screen.dart
- Bottom navigation: 4th tab in HomeScreen
- Named routes:
  - /profile → ProfileScreen
  - /profile/edit → EditProfileScreen
- Edit button on Profile navigates to /profile/edit

Debug
- Route probe screen: lib/screens/debug_route_probe.dart
- Optional route for internal validation: /debug/probe

Notes
- Run Flutter commands from this app directory (contains pubspec.yaml):
  - flutter pub get
  - flutter analyze
  - flutter test
  - flutter run
