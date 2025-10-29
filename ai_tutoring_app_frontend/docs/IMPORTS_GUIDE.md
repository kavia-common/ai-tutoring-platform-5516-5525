# Imports Guide

Use barrels to keep imports concise and consistent.

Recommended:
- import 'package:ai_tutoring_app_frontend/app_exports.dart';
  - Exposes theme and screens/index.dart barrels.

Screens barrel:
- import 'package:ai_tutoring_app_frontend/screens/index.dart';
  - Exposes:
    - ProfileScreen, TutoringSessionsScreen, DocumentsScreen, CodeGeneratorScreen
    - ProfileRoutes, EditProfileRoutes
    - openEditProfile() helper
    - routes.dart barrel

Examples:
- Navigator.pushNamed(context, ProfileRoutes.profile);
- openEditProfile(context);
