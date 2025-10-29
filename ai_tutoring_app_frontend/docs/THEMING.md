# Theming — Ocean Professional

Primary theme setup:
- File: lib/theme/app_theme.dart
- ColorScheme uses ocean blues (#2563EB) and amber accents (#F59E0B)
- Material 3 enabled with modern components and rounded surfaces

Profile screen usage:
- Accent ring around avatar uses primary → secondary gradient
- Stats pills use tints of primary/secondary/tertiary to match Ocean accents
- Cards, chips, and inputs respect ThemeData defaults from AppTheme.ocean

Quick references:
- Colors: lib/theme/app_theme.dart (_OceanColors)
- Extensions: lib/theme/ocean_extensions.dart (tint helpers)
- Screens: lib/screens/profile_screen.dart (Profile)
