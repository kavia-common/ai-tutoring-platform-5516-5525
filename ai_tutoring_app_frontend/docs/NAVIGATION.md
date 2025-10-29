# Navigation Overview

Primary shell:
- lib/screens/home_screen.dart
  - BottomNavigationBar (4 tabs): Sessions, Documents, Code, Profile
  - Drawer with quick links to the same sections
  - AppBar action to open Profile when not on Profile tab

Profile
- Screen: lib/screens/profile_screen.dart
- Named route: ProfileRoutes.profile ("/profile")
- Helpers:
  - lib/screens/profile_nav.dart (openProfile(context))
  - lib/screens/profile_icons.dart (icon mapping)
- Barrel exports:
  - lib/screens/index.dart
  - lib/app_exports.dart (aggregates screens/index.dart + theme)

Theme
- Ocean Professional: lib/theme/app_theme.dart
