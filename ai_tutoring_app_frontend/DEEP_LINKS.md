# Deep Link/Navigation Examples

These examples show how to navigate to the Profile-related routes using named navigation.

Programmatic navigation examples:

- Navigate to Profile:
  Navigator.of(context).pushNamed('/profile');

- Navigate to Edit Profile:
  Navigator.of(context).pushNamed('/profile/edit');

Notes:
- Named routes are registered in lib/main.dart via AppRoutes constants.
- Ensure AppRoutes.profile and AppRoutes.editProfile remain synced with the route strings.
