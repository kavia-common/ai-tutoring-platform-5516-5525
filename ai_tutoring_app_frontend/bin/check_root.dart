import 'dart:io';

/// PUBLIC_INTERFACE
/// Run with: dart run bin/check_root.dart
/// Exits 0 when run from Flutter project root (pubspec.yaml present), else prints guidance and exits 1.
void main() {
  final pubspec = File('pubspec.yaml');
  if (pubspec.existsSync()) {
    stdout.writeln('OK: pubspec.yaml found. Running from Flutter project root.');
    exit(0);
  } else {
    stderr.writeln('ERROR: Not in Flutter project root.');
    stderr.writeln('Set working directory to: ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
    exit(1);
  }
}
