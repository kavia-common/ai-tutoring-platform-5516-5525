# App Overview — AI Tutoring App Frontend

Theme
- Ocean Professional (see lib/theme/app_theme.dart)

Entry
- lib/main.dart: MaterialApp with Ocean theme, HomeScreen shell, and centralized routes (AppRouter.routes()).

Navigation
- HomeScreen (lib/screens/home_screen.dart): Bottom navigation with 4 tabs:
  1) Sessions
  2) Documents
  3) Code
  4) Profile

Profile Feature
- Screen: lib/screens/profile_screen.dart (Ocean-themed)
- Edit: lib/screens/edit_profile_screen.dart
- Named routes: see lib/routes.dart
  - AppRoutes.profile -> '/profile' (ProfileScreen)
  - AppRoutes.editProfile -> '/profile/edit' (EditProfileScreen)
- Profile tab wired via HomeScreen bottom navigation

Routing
- Central routes map: lib/router.dart (AppRouter.routes())
- Barrel exports for routing: lib/app_router_exports.dart
- Screens barrel: lib/screens/index.dart

Debug/Validation
- Optional probe: lib/screens/debug_route_probe.dart (route '/debug/probe')
- Tests: 
  - test/profile_nav_test.dart
  - test/routes_smoke_test.dart

Run/Analyze/Test (from this directory, where pubspec.yaml resides)
- flutter pub get
- flutter analyze
- flutter test
- flutter run

From repository root, use wrappers:
- ./flutterw analyze
- ./ci_run_flutter.sh analyze
- make analyze
- ./build.sh

Note
If CI reports “Could not determine project root directory for Flutter project”, ensure your working directory is:
ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
