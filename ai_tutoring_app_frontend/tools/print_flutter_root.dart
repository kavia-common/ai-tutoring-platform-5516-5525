/// PUBLIC_INTERFACE
/// Prints the relative path to the Flutter project root (directory containing pubspec.yaml).
///
/// Usage:
///   dart tools/print_flutter_root.dart
/// Integrate into CI to set working-directory prior to running flutter commands.
void main() {
  // This repository hosts multiple directories; the Flutter app lives here:
  // ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
  // Print to stdout so shell scripts can capture it.
  // PUBLIC_INTERFACE
  print('ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
}
