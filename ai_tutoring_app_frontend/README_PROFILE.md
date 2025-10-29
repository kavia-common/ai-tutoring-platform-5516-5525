# Profile Feature

This document summarizes the Profile screen integration.

- Screen: lib/screens/profile_screen.dart
- Navigation:
  - Bottom navigation includes "Profile" as the 4th tab in HomeScreen.
  - Named route registered in MaterialApp: `/profile`.
- Theme: Ocean Professional (uses Theme.of(context).colorScheme and textTheme).
- Notes:
  - Actions are stubbed with SnackBars.
  - FAB hidden on Profile tab to reduce visual noise.

How to navigate programmatically:
Navigator.of(context).pushNamed('/profile');
