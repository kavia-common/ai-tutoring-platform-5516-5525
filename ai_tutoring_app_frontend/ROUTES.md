# Routes

This app registers named routes for Profile flows:

- /profile → ProfileScreen
- /profile/edit → EditProfileScreen

Usage:
- Navigator.of(context).pushNamed('/profile');
- Navigator.of(context).pushNamed('/profile/edit');

Alternatively, direct navigation via MaterialPageRoute is supported (as implemented from Profile → Edit).
