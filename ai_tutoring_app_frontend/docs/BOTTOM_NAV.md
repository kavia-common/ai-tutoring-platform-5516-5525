# Bottom Navigation (4 tabs)

Tabs:
1) Sessions — TutoringSessionsScreen (chat/sessions hub)
2) Documents — DocumentsScreen (document manager)
3) Code — CodeGeneratorScreen (code generation tools)
4) Profile — ProfileScreen (account, stats, settings)

Entry:
- Implemented in lib/screens/home_screen.dart
- Titles are shown in AppBar: "AI Tutor • <TabName>"
- FAB is hidden on Profile for a cleaner settings view

Deep link:
- Named route for Profile is available as ProfileRoutes.profile
