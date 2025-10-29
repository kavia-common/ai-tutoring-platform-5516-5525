# Profile Feature

This document describes the Profile screen added to the app and how it integrates with the navigation.

- Screen path: lib/screens/profile_screen.dart
- Entry point: Exposed in bottom navigation as the 4th tab.
- Optional named route: '/profile' registered in MaterialApp.routes in lib/main.dart.

UI and Theme
- Styled using the Ocean Professional theme (see lib/theme/app_theme.dart).
- Includes:
  - Header "Profile"
  - Profile Card (avatar + name + email + Edit button)
  - Stats row: Streak, Accuracy, Docs
  - Settings card: Notifications, Privacy, Appearance
  - Support card: Help & FAQs, Contact Support, About
  - Sign out outlined button

Navigation
- The HomeScreen bottomNavigationBar now contains four items:
  1) Sessions
  2) Documents
  3) Code
  4) Profile

Developer Notes
- To deep-link to the profile screen:
  Navigator.of(context).pushNamed('/profile');

- To run locally:
  cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
  flutter pub get
  flutter run
