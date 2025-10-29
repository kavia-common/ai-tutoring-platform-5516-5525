/// PUBLIC_INTERFACE
/// Verifies this script is executed from the Flutter project root (next to pubspec.yaml).
/// Usage (from repo root):
///   dart ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend/tools/verify_working_directory.dart
///
/// Exit codes:
///  0 - OK (pubspec.yaml found in current directory)
///  2 - Not at Flutter project root (pubspec.yaml missing)
import 'dart:io';

void main() {
  final file = File('pubspec.yaml');
  if (file.existsSync()) {
    stdout.writeln('[OK] pubspec.yaml found. Working directory is the Flutter project root.');
    exit(0);
  } else {
    stderr.writeln('[ERROR] pubspec.yaml not found in current directory.');
    stderr.writeln('Run Flutter commands from: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
    exit(2);
  }
}
