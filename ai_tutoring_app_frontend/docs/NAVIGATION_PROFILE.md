# Navigation — Profile Integration

Entry:
- lib/main.dart registers named routes for:
  - ProfileRoutes.profile -> ProfileScreen
  - EditProfileRoutes.editProfile -> EditProfileScreen

Bottom Navigation:
- Profile tab added as the 4th item in HomeScreen (lib/screens/home_screen.dart).
- Also accessible via AppBar action (person icon) when not on the Profile tab.

Named route usage:
Navigator.of(context).pushNamed(ProfileRoutes.profile);
Navigator.of(context).pushNamed(EditProfileRoutes.editProfile);

Files to check:
- lib/screens/profile_screen.dart
- lib/screens/edit_profile_screen.dart
- lib/screens/profile_routes.dart
- lib/screens/edit_profile_routes.dart
- lib/main.dart
