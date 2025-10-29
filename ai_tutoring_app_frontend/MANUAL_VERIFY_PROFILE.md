Manual Verification — Profile Feature

From project root:
cd ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

1) flutter pub get
2) flutter run

Steps:
- Observe bottom navigation with 4 items: Sessions, Documents, Code, Profile
- Tap Profile: screen header shows "Profile", avatar, email, stats
- Tap Edit on the header: navigates to "Edit Profile" screen
- Modify fields and tap Save: confirmation dialog + SnackBar (stub)

Optional:
- AppBar person icon (on non-Profile tabs) switches to Profile tab
- Drawer contains a Profile entry that selects the tab

Notes:
- Ocean Professional theme applied
- Persistence/backends are stubbed for preview
