# Profile Feature

Overview
- Profile screen with Ocean Professional styling
- Bottom navigation integration as the 4th tab
- Named routes:
  - ProfileRoutes.profile -> '/profile'
  - EditProfileRoutes.editProfile -> '/profile/edit'

Usage
- Switch to Profile tab via bottom navigation
- AppBar action on non-Profile tabs switches directly to the Profile tab
- Edit button on the Profile header navigates to the Edit Profile screen

Files
- lib/screens/profile_screen.dart
- lib/screens/edit_profile_screen.dart
- lib/screens/profile_routes.dart
- lib/screens/edit_profile_routes.dart
- lib/main.dart (routes registration)
- lib/screens/home_screen.dart (tab integration)

Testing
- test/profile_tab_smoke_test.dart
- test/routes_registration_smoke_test.dart
- test/project_root_smoke_test.dart

Notes
- This is a preview; persistence and backend integration are not implemented yet.
