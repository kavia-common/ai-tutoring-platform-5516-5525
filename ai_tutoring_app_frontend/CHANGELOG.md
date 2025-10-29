# Changelog

## 1.1.0 — Profile Feature
- Added Profile screen (lib/screens/profile_screen.dart) with Ocean Professional styling.
- Integrated as 4th BottomNavigationBar tab in HomeScreen.
- Added named route for Profile: ProfileRoutes.profile (`/profile`).
- Added AppBar action to open Profile from non-Profile tabs.
- Added Drawer with quick links to all tabs, including Profile.
- Added Edit Profile screen (placeholder) and route: EditProfileRoutes.editProfile (`/profile/edit`).
- Preserved per-tab scroll state via PageStorage and added basic state restoration for bottom nav selection.
- Added docs: docs/PROFILE_FEATURE.md, docs/NAVIGATION.md, docs/ROUTES.md, docs/THEMING.md, docs/QA_PROFILE_CHECKLIST.md.
- Added tests: test/profile_route_test.dart, test/profile_integration_test.dart.
- Minor UX/accessibility refinements: selectable email, semantics, footer note.
- Lint cleanup and route constants.
