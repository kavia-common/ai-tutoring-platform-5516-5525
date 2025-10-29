# Profile Navigation Helpers

Public helper:
- openEditProfile(BuildContext context)
  - Navigates to Edit Profile using the named route.

Usage:
import 'package:ai_tutoring_app_frontend/screens/index.dart';
// ...
onPressed: () => openEditProfile(context),

Notes:
- Helper uses Navigator.pushNamed(EditProfileRoutes.editProfile).
- Ensure MaterialApp.routes registers EditProfileRoutes.editProfile (configured in lib/main.dart).
