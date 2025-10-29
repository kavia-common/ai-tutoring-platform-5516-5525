import 'dart:io';

/// PUBLIC_INTERFACE
/// Simple diagnostic script for CI to ensure the working directory is the Flutter project root.
/// Run with: dart run tool/check_project_root.dart
void main() {
  final pubspec = File('pubspec.yaml');
  if (pubspec.existsSync()) {
    stdout.writeln('OK: pubspec.yaml found. Working directory is correct.');
    exit(0);
  } else {
    stderr.writeln('ERROR: pubspec.yaml not found in current directory.');
    stderr.writeln('Set working directory to: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
    exit(1);
  }
}
