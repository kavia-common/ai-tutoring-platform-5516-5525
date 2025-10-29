/// PUBLIC_INTERFACE
void main() {
  /** Prints the relative path to the Flutter project directory for CI tooling. */
  // If structure changes, update this string.
  // Current Flutter app lives under ai_tutoring_app_frontend.
  // Output should be parseable (single line, no extra logs).
  // Keep in sync with FLUTTER_PROJECT_PATH.txt.
  // This script allows CIs that support running a resolver step to find the app root.
  // Example usage:
  //   FLUTTER_DIR=$(dart run tool/print_flutter_root.dart)
  //   cd "$FLUTTER_DIR"
  //   flutter analyze
  print('ai_tutoring_app_frontend');
}
