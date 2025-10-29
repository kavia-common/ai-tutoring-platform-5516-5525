# Routes — Profile Module

- ProfileRoutes.profile
  - Path: /profile
  - Screen: ProfileScreen

- EditProfileRoutes.editProfile
  - Path: /profile/edit
  - Screen: EditProfileScreen

Usage:
Navigator.of(context).pushNamed(ProfileRoutes.profile);
Navigator.of(context).pushNamed(EditProfileRoutes.editProfile);
